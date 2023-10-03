

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
   
   data data.cirrhosis_large;;
      set data.cirrhosis;
   run;
   
   %do i=1 %to 38585;
      proc append base=data.cirrhosis_large data=data.cirrhosis; run;
   %end;
   
   %mend;
   
   %make_large_ds;