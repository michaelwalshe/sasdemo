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



