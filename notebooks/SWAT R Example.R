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
cirrhosis <- defCasTable(conn, "cirrhosis", caslib="public")



# Use code to manipulate a SAS table as if it's an R data frame
cirrhosis["Bilirubin_high"] <- cirrhosis["Bilirubin"] > 1.2



head(cirrhosis)



# Use SAS analytics from R ----
cas.builtins.loadActionSet(conn, actionSet="regression")

output <- cas.regression.glm(
  cirrhosis,
  target = "Platelets",
  inputs = c("Stage", "Status", "Drug", "Bilirubin_high", "Albumin", "Copper"),
  nominals = c("Stage"),
  output = list(
    casOut = list(name = "PlateletsPrediction", caslib="public", replace = TRUE),
    copyvars = "all",
    pred = "PredictedPlatelets",
    resid = "ResidualPlatelets"
  )
)


result <- defCasTable(conn, "PlateletsPrediction", caslib="public")

head(result)


# Integrate the results with R visualisations ----
plot(
  result$PredictedPlatelets,
  result$Platelets,
  xlab="Predicted Platelets",
  ylab="Actual Platelets"
)


result |>
  to.r.data.frame() |>
  ggplot(aes(x=PredictedPlatelets, y=Platelets)) +
  geom_point() +
  geom_abline(intercept=0, slope=1, color="red") +
  labs(x="Predicted Platelets", y="Actual Platelets")
