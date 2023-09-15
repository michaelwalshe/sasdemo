

libname data "/nfs/demo/sasdemo/data";

data _null_;
   infile '/nfs/demo/sasdemo/create_data/cirrhosis.csv' dsd truncover ;
   file '/nfs/demo/sasdemo/create_data/cirrhosis_clean.csv' dsd ;
   length word $200 ;
   do i=1 to 20;
      input word @;
      if word='NA' then word=' ';
      put word @;
   end;
   put;
run;


proc import
	file="/nfs/demo/sasdemo/create_data/cirrhosis_clean.csv"
	out=data.cirrhosis
	dbms=csv
	replace
;
	getnames=yes;
run;


/* Increase the size of cirrhosis */
%macro make_large_ds;

data data.cirrhosis_large;
    %do i=1 %to 10000;
    	set data.cirrhosis;
    	output;
    %end;
run;

%mend;

%make_large_ds;