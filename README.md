# Code and data for Wispinski et al. (2021)

Wispinski, N.J., Lin, S., Enns, J.T., & Chapman, C.S. (2021). Selective attention to real-world objects drives their emotional appraisal. *Attention, Perception, & Psychophysics*. https://doi.org/10.3758/s13414-020-02177-x.

This project consists of two experiments which aimed to measure the impact of attention and action on affective evaluation.

These data and code (along with pre-registration and videos of the task), are also available at https://osf.io/iyd9s/.

## Prerequisites

This code is written to be compatible with MATLAB 2018a.

## Data

Data
 - Contains a .mat file for each participant
 - Participant ID prefixes correspond to study and condition:
    - OD (Study 1)
    - OR (Study 2 - Reaching condition)
    - OK (Study 2 - Keyboard condition)
 - Note: Some participant IDs are repeated because of experimenter error. All individual files correspond to a unique participant-condition combination
 - data_struct.matData contains trial-by-trial behavioural measures (variables described in .m analysis scripts)
 - data_struct.newFDA contains space-normalized (100 points per trial) reach trajectories for each trial (see [Gallivan & Chapman, 2014](https://www.frontiersin.org/articles/10.3389/fnins.2014.00215/full) for trajectory analysis methods)

## Code

Study1_Analysis_Feb2019.m
 - Analyses Study 1 (OD* files) for effect of attentional condition on affective ratings

Study2_Analysis_Feb2019.m
 - Analyses Study 2 (OR* and OK* files) for effect of attentional condition on affective ratings

removeTrials.m
removeTrials_keyboard.m
 - Functions to remove trials from reaching or keyboard data based on trial indices
 - Called by analysis scripts Study1_Analysis_Feb2019.m and Study2_Analysis_Feb2019.m

reachExampleFig.m
 - Generates figure 1d (example 3D reach trajectories in Study 2)

drawTest.m
 - Generates "circles", "shape", and "squares" stimuli used in Studies 1 and 2 on a small [Psychtoolbox](http://psychtoolbox.org/) screen
 - Uses functions:
    - drawCircles.m
    - drawPoly.m
    - drawSquares.m
