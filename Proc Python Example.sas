/*Simple proc python example*/

proc python;
submit;

print("Hello world")

endsubmit;
run;


























/* Interact with SAS data sets */
data mycars;
	set sashelp.cars;
run;

proc python;
submit;

cars = SAS.sd2df("mycars")
print(cars.head())

endsubmit;
run;















/* Execute python scripts/modules using proc python */
proc python infile="/nfs/demo/sasdemo/python_example.py";
submit;

# Read in SAS dataset
df = SAS.sd2df("mycars")


# Compute mean, and then trimmed mean
print(df["Weight"].mean())

print(trimmed_mean(df["Weight"]))


# Operate on dataframe as you usually would
df = df.loc[df["Make"] == "Jaguar"]
df["Weight2"] = df["Weight"] - trimmed_mean(df["Weight"])



# Output the result back to SAS
rc = SAS.df2sd(df, "mycars2")

endsubmit;
run;


proc print data=mycars2;
run;
















/*Can re-use variables across procs*/
proc python restart;
submit;
print(df.head())
endsubmit;
run;


/*Also can terminate/restart*/