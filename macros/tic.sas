/*
 * Name: tic
 * Description: Implements a stack based timer, for recording multiple durations during processing. Use alongside %toc()
 *    e.g.:
        tic(Total Duration);
        tic(Step 1);
        .... some processing...
        toc() --> Step 1: 00:05:32
        tic(Step 2);
        tic(Step 2a);
        .... some processing...
        toc() --> Step 2a: 00:00:12
        .... some processing...
        toc() --> Step 2: 00:00:30
        toc() --> Total Duration: 00:06:02
 * Author: Michael Walshe
 * Changelog:
 * Date        Author          Change
 * 05/03/2024  Michael Walshe  Initial
 *
 * Copyright (c) 2024 Katalyze Data
 *
 */
%macro tic(
    label  /* Label for this timer */,
    timer_ds=__timers  /* Dataset to store the timer data in */
);
%put NOTE: (&sysmacroname) ==> Starting timer &label.;

data &timer_ds._tmp;
    length label $32 start 8;
    start = datetime();
    label = "&label";
return;

proc append base=&timer_ds. data=&timer_ds._tmp force nowarn;
run;

%mend tic;
