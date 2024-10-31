%let root=/nfs/demo/sasdemo;

filename macros "&root./macros";

options mautosource sasautos=(sasautos macros);


%tic(Running process);

%tic(Step One);

data _null_;
	rc = sleep(2, 1);
run;

%toc()

%tic(Step Two);

data _null_;
	rc = sleep(2, 1);
run;

%toc();

%toc();
