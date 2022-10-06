/* Start local library */
libname gym "/home/michael.walshe@amadeus.co.uk/repos/Demo/data";

/* Start cas session */
cas casdemo
	sessopts=(caslib=public timeout=3600);

/* Setup SAS libref connection to CAS library */
libname public cas caslib=public;
libname casuser cas caslib=casuser;















/*casutil examples*/
proc casutil session=casdemo;
	droptable casdata="members" quiet;
	droptable casdata="gym_summary" quiet;
	droptable casdata="big_members" quiet;

	load data=gym.big_members promote;
	load data=gym.members promote;
	load data=gym.gym_summary promote;
run;

proc casutil session=casdemo;
	save casdata="members" replace;
	save casdata="gym_summary" replace;
	save casdata="big_members" replace;
run;












/*Regular data step*/
 data members_new; 
 	set gym.big_members; 
 	if gym_size = "Small" then do; 
 		gym_target_members = gym_target_members * 0.8; 
 	end; 
 	achieving_target = gym_target_members >= gym_current_members; 
 	 
 	if achieving_target; 
 run; 
 






/* CAS data step*/
 data public.members_new; 
 	set public.big_members; 
 	if gym_size = "Small" then do; 
 		gym_target_members = gym_target_members * 0.8; 
 	end; 
 	achieving_target = gym_target_members >= gym_current_members; 
 	 
 	if achieving_target; 
 run; 




/* CAS has numerous benefits.... */
proc sort data=public.big_members out=public.big_members_srt;
	by gym_id;
run;


data public.members_extended;
	merge public.big_members
	      public.gym_summary(keep=gym_id total_revenue);
	by gym_id;
	
	prop_of_revenue = total_payments / total_revenue;
run;




/*Procedure exe*/
proc freq data=gym.big_members;
    table gender * country;
run;

proc freqtab data=public.big_members;
    table gender * country;
run;



/* cas _all_ terminate; */