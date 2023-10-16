# Setting up a SWAT Connection for R ----
library(swat)
library(ggplot2)

sas_viya <-  r"(C:\SAS Viya\)"

Sys.setenv(CAS_CLIENT_SSL_CA_LIST = file.path(sas_viya, "CAS_ex_cert.crt"))

conn <- CAS(hostname="sas-cas-server-default-bin-demo.uksouth.cloudapp.azure.com",
            port=5570,
            authinfo=file.path(sas_viya, "authinfo"))

cas.builtins.serverStatus(conn)


# Create reference to data ----

# Create a reference to in-memory tables, or load in local tables
gyms <- defCasTable(conn, "gym_summary", caslib="public")
members <- defCasTable(conn, "members", caslib="public")





# Use code to manipulate a SAS table as if it's an R data frame
gyms["achieving_target"] <- gyms[, "members_net_change"] > 0


members_subset <- members[members$country == "England"]
head(members_subset)



# Use SAS analytics from R ----
cas.builtins.loadActionSet(conn, actionSet="regression")

output <- cas.regression.glm(
  gyms,
  target = "total_revenue",
  inputs = c("achieving_target", "Gym_Size", "Gym_Current_Members"),
  output = list(
    casOut = list(name = "RevenuePrediction", caslib="public", replace = TRUE),
    copyvars = "all",
    pred = "Predicted_Revenue",
  )
)


result <- defCasTable(conn, "RevenuePrediction", caslib="public")

head(result)


# Integrate the results with R visualisations ----
plot(
  result$Predicted_Revenue,
  result$total_revenue,
  xlab="Predicted Revenue",
  ylab="Actual Revenue"
)


result |>
  to.r.data.frame() |>
  ggplot(aes(x=Predicted_Revenue, y=total_revenue)) +
  geom_point() +
  geom_abline(intercept=0, slope=1, color="red") +
  labs(x="Predicted Revenue", y="Actual Revenue")
