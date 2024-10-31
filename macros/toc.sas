/*
 * Name: toc
 * Description: Implements a stack based timer, for recording multiple durations during processing. Use alongside %tic()
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
%macro toc(
    timer_ds=__timers  /* Name of the dataset to store the timing information */
    ,all=0  /* Whether to finish and output all timers */
    ,label=  /* Label for a  specific timer to stop. This shouldnt be needed, just use %toc(). */
);

%if &all. eq 1 and &label. ne %str() %then %do;
    %put %str(E)RROR: You cannot specify both all=1 and a label;
    %return;
%end;

%if &label ne %str() %then %do;
    %let cond=label="&label.";
%end;
%else %do;
    %let cond=eof or &all.;
%end;

data &timer_ds;
    set &timer_ds. end=eof;
    if &cond. then do;
        dur = datetime() - start;
        n_dashes = repeat('-', 10 + length(label) + 15);
        putlog 'NOTE: ==> ' n_dashes;
        putlog 'NOTE: ==> ' label ' : ' dur time13.2;
        putlog 'NOTE: ==> ' n_dashes;
        delete;
    end;
    drop dur n_dashes;
run;

%mend toc;
