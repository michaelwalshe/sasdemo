libname gym "/home/michael.walshe@amadeus.co.uk/repos/Demo/data";


/* Get gym info from datalines */
data _gyms;
	infile datalines delimiter=','; 
	input Gym_ID $ Gym_Name :$32. Country :$32. Gym_Latitude Gym_Longitude Gym_Target_Members Gym_Current_Members Target_flag Gym_Size $ Gym_Travel $;
	datalines;
BFG01,Barnet,England,51.652931,-0.19961,2330,2376,1,Medium,M
BFG02,Barnsley,England,53.552929,-1.48127,2373,2229,0,Medium,M
BFG03,Bath,England,51.38227,-2.36762,1861,1917,1,Medium,M
BFG04,Bedford,England,52.135712,-0.46804,2950,2861,0,Medium,M
BFG05,Blackpool,England,53.812774,-3.036945,1794,1811,1,Medium,H
BFG06,Bolton,England,53.579217,-2.411075,2375,2493,1,Medium,M
BFG07,Bournemouth,England,50.721199,-1.88681,2430,2478,1,Medium,H
BFG08,Bradford,England,53.79385,-1.75244,2003,2123,1,Medium,M
BFG09,Bromley,England,51.406025,0.013156,2575,2549,0,Medium,L
BFG10,Cambridge,England,52.20443,0.111799,2320,2489,1,Medium,H
BFG11,Camden,England,51.539791,-0.139422,558,602,1,Small,L
BFG12,Chelmsford,England,51.736554,0.481764,1691,1877,1,Medium,M
BFG13,Chester,England,53.19146,-2.89501,1647,1581,0,Medium,M
BFG14,Coventry,England,52.406822,-1.519693,4439,4705,1,Big,M
BFG15,Croydon,England,51.37621,0.09821,2837,3092,1,Medium,M
BFG16,Derby,England,52.921902,-1.47564,3221,2996,0,Big,M
BFG17,Doncaster,England,53.523041,-1.13376,795,834,1,Small,M
BFG18,Enfield,England,51.6521,-0.08153,629,660,1,Small,L
BFG19,Guildford,England,51.236221,-0.570409,1716,1698,0,Medium,L
BFG20,Hackney,England,51.545792,-0.05542,2933,3020,1,Medium,L
BFG21,Haringey,England,51.5853,-0.12258,2017,2158,1,Medium,L
BFG22,Harrow,England,51.57881,-0.33376,2833,3144,1,Medium,M
BFG23,Hounslow,England,51.466756,-0.36937,1184,1302,1,Small,L
BFG24,Lambeth,England,51.48911,-0.11067,1381,1299,0,Small,M
BFG25,Leeds,England,53.800755,-1.549077,4992,5541,1,Big,M
BFG26,Leicester,England,52.636879,-1.139759,4395,4526,1,Big,M
BFG27,Liverpool,England,53.408371,-2.991573,3032,2790,0,Big,M
BFG28,Luton,England,51.87965,-0.41756,1004,1042,1,Small,M
BFG29,Manchester,England,53.475133,-2.25588,4589,4680,1,Big,L
BFG30,Milton Keynes,England,52.040623,-0.759417,1927,1946,1,Medium,M
BFG32,Norwich,England,52.628101,1.29935,808,850,1,Small,H
BFG33,Oxford,England,51.750584,-1.236227,2610,2556,0,Medium,M
BFG34,Peterborough,England,52.5695,-0.24053,633,645,1,Small,M
BFG35,Plymouth,England,50.372795,-4.128031,3026,3177,1,Big,H
BFG36,Portsmouth,England,50.798908,-1.09116,2200,2220,1,Medium,H
BFG37,Reading,England,51.448187,-0.967057,3681,3644,0,Big,M
BFG39,Sheffield,England,53.38113,-1.470085,3887,4120,1,Big,M
BFG40,Slough,England,51.50935,-0.59545,2079,2099,1,Medium,L
BFG41,Stockport,England,53.393312,-2.1266,2470,2568,1,Medium,M
BFG38,Uppingham,England,52.591244,-0.72877,526,537,1,Small,M
BFG42,Warrington,England,53.39,-2.597,2555,2631,1,Medium,M
BFG31,Witney,England,51.780034,-1.482827,1081,1128,1,Small,M
BFG43,Woking,England,51.323556,-0.536711,1163,1221,1,Small,L
BFG44,York,England,53.96,-1.0873,2463,2536,1,Medium,M
BFG45,Armagh,Northern Ireland,54.3503,-6.6528,1402,1444,1,Small,L
BFG46,Ballymoney,Northern Ireland,55.0705,-6.5174,585,637,1,Small,H
BFG47,Banbridge,Northern Ireland,54.3487,-6.2705,648,693,1,Small,M
BFG48,Belfast,Northern Ireland,54.5973,-5.9301,3768,3843,1,Big,M
BFG49,Derry,Northern Ireland,54.9966,-7.3086,2442,2490,1,Medium,M
BFG50,Dungannon,Northern Ireland,54.5083,-6.7669,1211,1259,1,Small,L
BFG51,Omagh,Northern Ireland,54.5977,-7.31,2808,2976,1,Medium,M
BFG52,Aberdeen,Scotland,57.14975,-2.0943,2096,2179,1,Medium,H
BFG53,Dundee,Scotland,56.482322,-2.988485,990,1002,1,Small,H
BFG54,Edinburgh,Scotland,55.9533,-3.1883,3986,4265,1,Big,M
BFG55,Falkirk,Scotland,56.0019,-3.7839,2411,2290,0,Medium,M
BFG56,Glasgow,Scotland,55.8642,-4.2518,3562,3685,1,Big,M
BFG57,Stirling,Scotland,56.1165,-3.9369,2579,2759,1,Medium,M
BFG58,Cardiff,Wales,51.4816,-3.1791,4653,4187,0,Big,M
BFG59,Newport,Wales,51.5842,-2.9977,2990,3109,1,Medium,M
BFG60,Swansea,Wales,51.6214,-3.9436,3243,3340,1,Big,H
;
run;

/* Set labels for columns */
data gyms;
  set _gyms;
  label gym_current_members='Gym Current Members'
        gym_longitude='Gym Longitude'
        gym_latitude='Gym Latitude'
        gym_target_members='Gym Target Members'
        gym_size='Gym Size'
        gym_name='Gym Name'
        gym_id='Gym ID'
        gym_travel='Gym Travel';
run;

proc delete data=_gyms; run;

/* Generate members data */
*Set date range for data to be generated over. These should be full years;
    %let gym_open=01JAN2016;
    %let year1=2017;
    %let year2=2018;
    %let year3=2019;
    %let last_date=31DEC2019;

data members;
  set gyms;

  length member_type $8. member_id $12.;

  format start_date date9. 
         start_month  monyy5. 
         start_year  year.
         join_fee total_payments monthly_fee nlmnlgbp12.2
         height weight avg_visits_week  
         distance_travelled comma12.1 ;

  label member_id = "Member ID"
        start_date = "Start Date"
        gender = "Gender"
        ageband = "Age Band"
        height="Height (cm)"
        weight="Weight (kg)"
        join_fee = "Joining Fee"
        monthly_fee ="Monthly Fee" 
        member_type = "Membership Type"
        gp_ref="GP Referral"
        total_payments="Total Membership Costs"
        start_month="Start Month"
        start_year="Start Year"
        avg_visits_week = 'Average Visits per Week'
        avg_visit_length= 'Average Visit Length (mins)'
        distance_travelled='Distance Travelled (miles)';

   drop _: i;

  * First we set up a number of arrays which will play a part in controlling the random data generation;
  * The elements of each array must sum to 1;
  array mth&year1.[12] _temporary_ (0.130 0.115 0.095 0.085 0.100 0.085 0.080 0.060 0.075 0.070 0.055 0.050);
  array mth&year2.[12] _temporary_ (0.111 0.101 0.092 0.102 0.104 0.096 0.084 0.067 0.065 0.059 0.061 0.058);
  array mth&year3.[12] _temporary_ (0.112 0.107 0.088 0.078 0.084 0.077 0.075 0.073 0.079 0.083 0.067 0.077);

  * Duration of membership in months - assume min 6 month contracts for students, minimum 12 month others;
/*  array dur_stu[8] _temporary_ (0.21  0.14  0.11  0.10  0.09  0.12  0.10  0.13);*/
/*  array dur[20] _temporary_ (0.35 0.28 0.12 0.11 0.09 0.025 0.0025 0.0005 0.007 0.006 0.006 0.005 0.004 0.003 0.002 0.0001 0.001 0.001 0.0003 0.0001);*/

  * Age bands: 16-19, 20-24, 25-29, 30-34, 35-44,45-64, 65+;
  * Male age bands, Female age bands;
  array mage[7] _temporary_ (0.149 0.195 0.115 0.107 0.184 0.164 0.086);
  array fage[7] _temporary_ (0.115 0.182 0.096 0.106 0.187 0.203 0.111);

  * Vary membership type within age group;
  * pot1 = Student pot2 = Standard pot3 = Gold;
  * Ages a=16-19 b=20-24  c=25-29  d=30-34  e=35-44  f=45-64  g=65+  ;
  array memtype_a {3} _temporary_ (0.65 0.3 0.05);
  array memtype_b {3} _temporary_ (0.55 0.375 0.075);
  array memtype_c {3} _temporary_ (0.4 0.475 0.125);
  array memtype_d {3} _temporary_ (0.2 0.625 0.175);
  array memtype_e {3} _temporary_ (0.12 0.715 0.165);
  array memtype_f {3} _temporary_ (0.03 0.72 0.25);
  array memtype_g {3} _temporary_ (0.01 0.84 0.15);

  * BMI;
  array bmi_f_young[5] _temporary_ (0.05 0.4 0.35 0.1 0.1);
  array bmi_f_mid[5]   _temporary_ (0.04 0.42 0.31 0.18 0.05);
  array bmi_f_old[5]   _temporary_ (0.02 0.31 0.3 0.22 0.15);
  array bmi_f_older[5] _temporary_ (0.02 0.20 0.41 0.25 0.12);

  array bmi_m_young[5] _temporary_ (0.02 0.41 0.29 0.23 0.05);
  array bmi_m_mid[5]   _temporary_ (0.02 0.32 0.3 0.28 0.08);
  array bmi_m_old[5]   _temporary_ (0.01 0.25 0.4 0.28 0.1);
  array bmi_m_older[5] _temporary_ (0.01 0.20 0.4 0.3 0.09);


  * Data is going to be generated pseudo-randomly but we need the 
    data to be the same each time the program is run(!);   
  call streaminit(340);

  do i=1 to gym_current_members;

      * Generate member id;
      member_id = catx('_',gym_id,put(i,z5.));

      * Generate gender;
      if mod(input(scan(gym_id,2,'G'),8.),2) = 0 and not mod(input(scan(gym_id,2,'G'),8.),5)=0 then _ratio=0.47;
      else _ratio = 0.56;
      _rand_num=round((rand('uniform')/12)-0.041,0.001);

    	_gender = rand('table',_ratio+_rand_num,1-_ratio-_rand_num);
      if _gender=2 then gender='Female';
      else gender='Male';

       * Generate three complete years of data plus year to date for this year;
      if substr(gym_name,3,1) < 'i' then _year=year("&gym_open."d)+rand("Table",0.13,0.26 ,0.29 , 0.32)-1;
      else _year=year("&gym_open."d)+rand("Table",0.12,0.33 ,0.29 , 0.26)-1;
      _fluctuation=0.05*rand("Normal");

  	  * Generate random join month using the three patterns we created above;
      *dates are fixed;
      if round(rand('uniform'),0.01) < 0.25 then start_date="&gym_open."d;
      else do;
        if _year=&year1 then _month=rand("Table", of mth&year1.[*]);
        else if _year=&year2 then _month=rand("Table", of mth&year2.[*]);
        else _month=rand("Table", of mth&year3.[*]);

        * Generate day in month uniformly across the month;
        if _month in (1,3,5,8,10,12) then _days=31;
        else if _month in (4,6,7,9,11) then _days=30;
        else if _month=2 and mod(_year,4) ne 0 then _days=28;
        else _days=29;
        _day=ceil(rand("Uniform")*_days);

        start_date=mdy(_month,_day,_year);
      end;

      start_month=intnx("MONTH",start_date,0,'b');
      start_year=intnx("YEAR",start_date,0,'b');

      * Generate ageband;
      if gender='Male' then _ageband=rand("Table", of mage[*]);
      else _ageband=rand("Table", of fage[*]);
      
      * Generate member type;
      if _ageband=1 then _memtype=rand("Table", of memtype_a[*]);
      else if _ageband=2 then _memtype=rand("Table", of memtype_b[*]);
      else if _ageband=3 then _memtype=rand("Table", of memtype_c[*]);
      else if _ageband=4 then _memtype=rand("Table", of memtype_d[*]);
      else if _ageband=5 then _memtype=rand("Table", of memtype_e[*]);
      else if _ageband=6 then _memtype=rand("Table", of memtype_f[*]);
      else if _ageband=7 then _memtype=rand("Table", of memtype_g[*]);

      if _memtype=1 then member_type="Student";
      else if _memtype=2 then member_type="Standard";
      else member_type="Gold";

      * Fluctuate the age bands a little more (member type needs to be created already);
      _fluctuation2=0.05*rand("Normal");
      if mod(_year,3)=0 and rand("Uniform")> 0.80+_fluctuation2 then _ageband=min(_ageband+1,7);
      else if mod(_year,2)=0 and rand("Uniform")> 0.85+_fluctuation2 then _ageband=min(_ageband+1,7);

      if _ageband=1 then ageband='16-19';
      else if _ageband=2 then ageband='20-24';
      else if _ageband=3 then ageband='25-29';
      else if _ageband=4 then ageband='30-34';
      else if _ageband=5 then ageband='35-44';
      else if _ageband=6 then ageband='45-64';
      else if _ageband=7 then ageband='65+';


      * Set up costs joinfee and monthly_fee;
      if member_type="Standard" then do; 
	      if year(start_date) = 2017 then join_fee=25;
	  	  else if year(start_date) = 2018 then join_fee=30;
          else join_fee=35;
          monthly_fee=40;
      end;

      else if member_type="Student" then do;
		  if month(start_date) in (1,2,3) then join_fee=.;
          else join_fee=15;
          monthly_fee=35;
      end;

      else if member_type="Gold" then do;
        join_fee=75;
        monthly_fee=60;
      end;

      *calculate current paid membership fees assuming all members are still members;
      total_payments=sum(join_fee,monthly_fee*(1+intck("month",start_date,"&last_date."d)));
    
      * Make ~10% of Standard Gym members GP Referrals;
      if member_type="Standard" and rand("Uniform")<=0.1 then gp_ref="Y";
      else gp_ref="N";

      * Generate height;  
      if gender='Male' then do;
        height= round(rand("normal",176,6),0.1);
        if height > 200 then height=height-15;
        else if height < 155 then height=height+15;
      end;
      else do;
        height= round(rand("normal",165,5),0.1);
        if height > 185 then height=height-15;
        else if height < 145 then height=height+15;
      end;

      * Generate BMI for each member;
      if gender='Male' then do;
        if ageband in ('16-19', '20-24') then _range=rand("Table", of bmi_m_young[*]);
        else if ageband in ('25-29', '30-34') then _range=rand("Table", of bmi_m_mid[*]);
        else if ageband in ('35-44', '45-64') then _range=rand("Table", of bmi_m_old[*]);
        else if ageband = '65+' then _range=rand("Table", of bmi_m_older[*]);
      end;
  
      else do;
        if ageband in ('16-19', '20-24') then _range=rand("Table", of bmi_f_young[*]);
        else if ageband in ('25-29', '30-34') then _range=rand("Table", of bmi_f_mid[*]);
        else if ageband in ('35-44', '45-64') then _range=rand("Table", of bmi_f_old[*]);
        else if ageband = '65+' then _range=rand("Table", of bmi_f_older[*]);
      end;

   	  if gp_ref = 'Y' then _bmi=round(34+abs(rand('normal'))*3,0.1);
      else if _range=1 then _bmi=round(18.5-abs(rand('normal')),0.1);
      else if _range=2 then _bmi=round(18.5+rand('uniform')*6.5,0.1);
      else if _range=3 then _bmi=round(25+rand('uniform')*5,0.1);
      else if _range=4 then _bmi=round(30+abs(rand('normal'))*2.7,0.1);
      else if _range=5 then _bmi=round(35+abs(rand('normal'))*2.7,0.1);

      if _bmi > 46 then _bmi=_bmi+10;

      * Now derive weight based on height and BMI;
      weight= round(_bmi * (height/100)*(height/100) ,0.1);

      *Average Vistits per week and average visit length for each member;
      if ((gender='Male' and ageband in ('45-64','65+') ) or (gender='Female' and ageband in ('45-64','65+'))) 
            and member_type='Gold' then do;
        _avg_visits_week1='G1';
        avg_visit_length=rand("integer",15,45);
      end;
      else if ((gender='Female' and ageband in ('16-19','20-24')) or (gender='Male' and ageband in ('16-19','20-24')))   
              and member_type='Student' then do;
        _avg_visits_week1='G2';
        avg_visit_length=rand("integer",90,180);
      end;
      else do;
        _avg_visits_week1='G3';
        if rand('uniform')<0.02 then avg_visit_length=rand("integer",15,45);
        else if rand('uniform')<0.50 then avg_visit_length=rand("integer",45,60);
        else if rand('uniform')<0.98 then avg_visit_length=rand("integer",60,90);
        else avg_visit_length=rand("integer",90,180);
      end;

      if _avg_visits_week1='G1' then avg_visits_week=rand("uniform")+1;
      else if _avg_visits_week1='G2' then avg_visits_week=rand("uniform")+5;
      else if _avg_visits_week1='G3' then avg_visits_week=rand("uniform")*7;

      if member_type = 'Student' and ageband = '65+' and gender ='Female' then member_type='Gold';
      if member_type = 'Student' and ageband = '65+' and gender ='Male' then member_type='Standard';

      /*calculate distance they live from gyms*/
      if gym_travel='L' then distance_travelled=abs(round(rand('normal',2.5,2),0.01));
      else if gym_travel='M' then distance_travelled=abs(round(rand('normal',4,3),0.01));
      else do;
        distance_travelled=round(rand('normal',7,5),0.01);
        if distance_travelled <0.01 then distance_travelled=abs(round(rand('normal',9,5),0.01));
      end;

      if avg_visits_week =7 then distance_travelled=round(rand('normal',3,1),0.01);
     
      output;
 end; 
run;

/* Load into libraries */
data gym.members;
  set members (drop=target_flag gym_travel);
run;

/* Get gym summary from datalines */
data gym.gym_summary;
	infile datalines delimiter=',';
	input country :$32. Gym_ID $ Gym_Name :$32. Gym_Latitude Gym_Longitude Gym_Size $ Gym_Current_Members Gym_Target_Members members_leaving
		members_new members_net_change monthly_fee monthly_fixed_cost total_joni_fees total_revenue;
	datalines;
England,BFG01,Barnet,51.652931,-0.19961,Medium,2376,2330,1115,2731,1616,2500055.00,2314427.89,48440.00,2548495.00
England,BFG02,Barnsley,53.552929,-1.48127,Medium,2229,2373,1073,2533,1460,2346065.00,1895903.91,45025.00,2391090.00
England,BFG03,Bath,51.38227,-2.36762,Medium,1917,1861,980,2226,1246,2038535.00,1880651.47,38715.00,2077250.00
England,BFG04,Bedford,52.135712,-0.46804,Medium,2861,2950,1541,3405,1864,2910675.00,2499591.20,58070.00,2968745.00
England,BFG05,Blackpool,53.812774,-3.036945,Medium,1811,1794,1052,2252,1200,1832165.00,1721880.35,38250.00,1870415.00
England,BFG06,Bolton,53.579217,-2.411075,Medium,2493,2375,1309,2974,1665,2644900.00,2571502.53,51925.00,2696825.00
England,BFG07,Bournemouth,50.721199,-1.88681,Medium,2478,2430,1513,3109,1596,2626630.00,2124733.83,48920.00,2675550.00
England,BFG08,Bradford,53.79385,-1.75244,Medium,2123,2003,1166,2577,1411,2155135.00,1783181.31,41745.00,2196880.00
England,BFG09,Bromley,51.406025,0.013156,Medium,2549,2575,1293,3015,1722,2640655.00,2418765.17,52425.00,2693080.00
England,BFG10,Cambridge,52.20443,0.111799,Medium,2489,2320,1320,3015,1695,2621785.00,2578351.29,52735.00,2674520.00
England,BFG11,Camden,51.539791,-0.139422,Small,602,558,361,767,406,644920.00,692872.36,12715.00,657635.00
England,BFG12,Chelmsford,51.736554,0.481764,Medium,1877,1691,970,2226,1256,1896225.00,1640366.36,39550.00,1935775.00
England,BFG13,Chester,53.19146,-2.89501,Medium,1581,1647,944,2007,1063,1567680.00,1322581.49,32680.00,1600360.00
England,BFG14,Coventry,52.406822,-1.519693,Big,4705,4439,2890,6065,3175,4918065.00,3400714.96,95970.00,5014035.00
England,BFG15,Croydon,51.37621,0.09821,Medium,3092,2837,1796,3884,2088,3232680.00,2471793.31,63470.00,3296150.00
England,BFG16,Derby,52.921902,-1.47564,Big,2996,3221,1545,3561,2016,3149285.00,3368099.05,62740.00,3212025.00
England,BFG17,Doncaster,53.523041,-1.13376,Small,834,795,492,1055,563,883220.00,894819.19,17445.00,900665.00
England,BFG18,Enfield,51.6521,-0.08153,Small,660,629,361,766,405,694905.00,642593.13,12645.00,707550.00
England,BFG19,Guildford,51.236221,-0.570409,Medium,1698,1716,813,1917,1104,1826685.00,2088186.49,34335.00,1861020.00
England,BFG20,Hackney,51.545792,-0.05542,Medium,3020,2933,1494,3461,1967,3051135.00,2847526.19,61190.00,3112325.00
England,BFG21,Haringey,51.5853,-0.12258,Medium,2158,2017,1032,2466,1434,2280835.00,1546192.46,44840.00,2325675.00
England,BFG22,Harrow,51.57881,-0.33376,Medium,3144,2833,1834,3917,2083,3361780.00,3708943.64,64420.00,3426200.00
England,BFG23,Hounslow,51.466756,-0.36937,Small,1302,1184,699,1575,876,1400950.00,1309107.69,26495.00,1427445.00
England,BFG24,Lambeth,51.48911,-0.11067,Small,1299,1381,582,1426,844,1371570.00,1481017.92,25460.00,1397030.00
England,BFG25,Leeds,53.800755,-1.549077,Big,5541,4992,2606,6249,3643,5586230.00,5477626.09,111240.00,5697470.00
England,BFG26,Leicester,52.636879,-1.139759,Big,4526,4395,2416,5421,3005,4774230.00,5167624.18,89350.00,4863580.00
England,BFG27,Liverpool,53.408371,-2.991573,Big,2790,3032,1621,3478,1857,2925380.00,3075767.27,56910.00,2982290.00
England,BFG28,Luton,51.87965,-0.41756,Small,1042,1004,507,1181,674,1127510.00,1118564.84,20635.00,1148145.00
England,BFG29,Manchester,53.475133,-2.25588,Big,4680,4589,2596,5765,3169,4940515.00,4984502.51,97060.00,5037575.00
England,BFG30,Milton Keynes,52.040623,-0.759417,Medium,1946,1927,1101,2395,1294,2053435.00,1753886.35,40405.00,2093840.00
England,BFG31,Witney,51.780034,-1.482827,Small,1128,1081,613,1356,743,1180085.00,1259145.71,22045.00,1202130.00
England,BFG32,Norwich,52.628101,1.29935,Small,850,808,457,1021,564,893855.00,840239.72,17115.00,910970.00
England,BFG33,Oxford,51.750584,-1.236227,Medium,2556,2610,1279,2968,1689,2543010.00,2812970.29,52625.00,2595635.00
England,BFG34,Peterborough,52.5695,-0.24053,Small,645,633,371,802,431,683140.00,724379.86,13215.00,696355.00
England,BFG35,Plymouth,50.372795,-4.128031,Big,3177,3026,1713,3801,2088,3360520.00,3273580.01,62870.00,3423390.00
England,BFG36,Portsmouth,50.798908,-1.09116,Medium,2220,2200,1040,2518,1478,2301305.00,2127434.27,45660.00,2346965.00
England,BFG37,Reading,51.448187,-0.967057,Big,3644,3681,1782,4180,2398,3718585.00,3726376.70,76310.00,3794895.00
England,BFG38,Uppingham,52.591244,-0.72877,Small,537,526,305,655,350,558830.00,633569.64,10510.00,569340.00
England,BFG39,Sheffield,53.38113,-1.470085,Big,4120,3887,1966,4705,2739,4164575.00,3928894.21,86155.00,4250730.00
England,BFG40,Slough,51.50935,-0.59545,Medium,2099,2079,1166,2552,1386,2238755.00,2111480.51,41230.00,2279985.00
England,BFG41,Stockport,53.393312,-2.1266,Medium,2568,2470,1184,2911,1727,2675305.00,2770505.20,53445.00,2728750.00
England,BFG42,Warrington,53.39,-2.597,Medium,2631,2555,1556,3272,1716,2819405.00,2629319.18,52060.00,2871465.00
England,BFG43,Woking,51.323556,-0.536711,Small,1221,1163,606,1426,820,1286105.00,1241722.46,25710.00,1311815.00
England,BFG44,York,53.96,-1.0873,Medium,2536,2463,1311,2999,1688,2694155.00,3028580.61,52880.00,2747035.00
Northern Ireland,BFG45,Armagh,54.3503,-6.6528,Small,1444,1402,817,1803,986,1518570.00,1345661.80,30960.00,1549530.00
Northern Ireland,BFG46,Ballymoney,55.0705,-6.5174,Small,637,585,348,756,408,681635.00,565255.58,12695.00,694330.00
Northern Ireland,BFG47,Banbridge,54.3487,-6.2705,Small,693,648,381,838,457,738990.00,625456.01,14420.00,753410.00
Northern Ireland,BFG48,Belfast,54.5973,-5.9301,Big,3843,3768,2410,4934,2524,4062980.00,3759431.99,77575.00,4140555.00
Northern Ireland,BFG49,Derry,54.9966,-7.3086,Medium,2490,2442,1462,3086,1624,2635010.00,2624175.97,49985.00,2684995.00
Northern Ireland,BFG50,Dungannon,54.5083,-6.7669,Small,1259,1211,638,1460,822,1321995.00,1383726.80,25130.00,1347125.00
Northern Ireland,BFG51,Omagh,54.5977,-7.31,Medium,2976,2808,1390,3350,1960,2977665.00,2399176.93,62715.00,3040380.00
Scotland,BFG52,Aberdeen,57.14975,-2.0943,Medium,2179,2096,1005,2407,1402,2226140.00,1979875.50,44095.00,2270235.00
Scotland,BFG53,Dundee,56.482322,-2.988485,Small,1002,990,529,1226,697,1033705.00,1032375.84,21640.00,1055345.00
Scotland,BFG54,Edinburgh,55.9533,-3.1883,Big,4265,3986,2584,5438,2854,4471150.00,3234232.85,88040.00,4559190.00
Scotland,BFG55,Falkirk,56.0019,-3.7839,Medium,2290,2411,1385,2911,1526,2441200.00,2137544.52,46880.00,2488080.00
Scotland,BFG56,Glasgow,55.8642,-4.2518,Big,3685,3562,1884,4271,2387,3784055.00,2999057.81,75260.00,3859315.00
Scotland,BFG57,Stirling,56.1165,-3.9369,Medium,2759,2579,1343,3193,1850,2904635.00,2973382.22,54980.00,2959615.00
Wales,BFG58,Cardiff,51.4816,-3.1791,Big,4187,4653,2230,5021,2791,4375515.00,3339407.61,87235.00,4462750.00
Wales,BFG59,Newport,51.5842,-2.9977,Medium,3109,2990,1687,3748,2061,3276760.00,2632206.98,62375.00,3339135.00
Wales,BFG60,Swansea,51.6214,-3.9436,Big,3340,3243,1763,3933,2170,3381615.00,2998279.47,68665.00,3450280.00
;
run;

/* Increase the size of members */
%macro make_big_members;

data gym.big_members;
    %do i=1 %to 100;
    	set gym.members;
    	output;
    %end;
run;

%mend make_big_members;

%make_big_members;