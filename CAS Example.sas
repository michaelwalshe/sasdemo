/* Start local library */
libname data "/nfs/demo/sasdemo/data";











/* Start cas session */
cas casdemo sessopts=( caslib=public timeout=3600);

/* Setup SAS libref connection to CAS library */
libname public cas caslib="Public";
libname casuser cas caslib=casuser;




























/*casutil examples*/
proc casutil session=casdemo;
	droptable casdata="cirrhosis" quiet;
	droptable casdata="cirrhosis_large" quiet;

	load data=data.cirrhosis_large promote;
	load data=data.cirrhosis promote;
run;







 



proc casutil session=casdemo;
	save casdata="cirrhosis" replace;
	save casdata="cirrhosis_large" replace;
run;












/*Regular data step*/
data cirrhosis_adj; 
	set data.cirrhosis_large; 
	if Drug = "D-penicillamine" then do; 
	 	platelets_anormality = Platelets < 180; 
	end; 
	else do;
		platelets_anormality = Platelets < 250; 
 	end;

	if platelets_anormality; 
run; 

/* CAS data step*/
 data public.cirrhosis_adj; 
	set public.cirrhosis_large; 
		if Drug = "D-penicillamine" then do; 
	 	platelets_anormality = Platelets < 180; 
	end; 
	else do;
		platelets_anormality = Platelets < 250; 
 	end;

	if platelets_anormality; 
 run; 


















/* CAS has numerous benefits.... */
data public.cirrhosis_adj2;
    set public.cirrhosis_large; 
    by Drug;

    if first.Drug then total = 0;
    total + N_Days;
    if last.Drug then output;
run;















/*Procedure exe*/
proc freq data=data.cirrhosis_large;
    table Status * Stage;
run;

proc freqtab data=public.cirrhosis_large;
    table Status * Stage;
run;







/* cas _all_ terminate; */
