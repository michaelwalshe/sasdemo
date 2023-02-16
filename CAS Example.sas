/* Start local library */
libname gym "/export/sas-viya/homes/viya_admin/demo/data";











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
	droptable casdata="members_large" quiet;

	load data=gym.members_large promote;
	load data=gym.members promote;
	load data=gym.gym_summary promote;
run;











proc casutil session=casdemo;
	save casdata="members" replace;
	save casdata="gym_summary" replace;
	save casdata="members_large" replace;
run;












/*Regular data step*/
 data members_new; 
 	set gym.members_large; 
 	if gym_size = "Small" then do; 
 		gym_target_members = gym_target_members * 0.8; 
 	end; 
 	achieving_target = gym_target_members >= gym_current_members; 
 	 
 	if achieving_target; 
 run; 

/* CAS data step*/
 data public.members_new; 
 	set public.members_large; 
 	if gym_size = "Small" then do; 
 		gym_target_members = gym_target_members * 0.8; 
 	end; 
 	achieving_target = gym_target_members >= gym_current_members; 
 	 
 	if achieving_target; 
 run; 


















/* CAS has numerous benefits.... */
proc sort data=public.members_large out=public.members_large_srt;
	by gym_id;
run;



data public.members_extended;
	merge public.members_large
	      public.gym_summary(keep=gym_id total_revenue);
	by gym_id;
	
	prop_of_revenue = total_payments / total_revenue;
run;















/*Procedure exe*/
proc freq data=gym.members_large;
    table gender * country;
run;

proc freqtab data=public.members_large;
    table gender * country;
run;







/* cas _all_ terminate; */
