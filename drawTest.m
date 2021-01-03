% Stimuli generation
% drawTest.m

% Selective attention of real world objects drives affective appreciation
% Nathan J. Wispinski, Shihao Lin, James T. Enns, & Craig S. Chapman

% Nathan Wispinski - Last updated Feb 22, 2019

% Requires Psychtoolbox (http://psychtoolbox.org/)

% Open a small psychtoolbox screen and generate "squares", "shape", or "circles" stimuli

bkCol = [200 200 200];
[mainWin,rect] = Screen('OpenWindow',0,bkCol,[0 0 320 570]);
%% Generate "squares" image

squareGrid = 5;
colors = {[0 0 0],[255 255 255],[255 131 255],[255 0 0],[62 0 255],[0 255 0],[250 255 0],[255 150 0],[163 96 38],[224 0 154]};
drawSquares(mainWin,rect,squareGrid,colors,bkCol,0,[],[]);
%% Generate "shape" image

numPoints = 10;
fillFlag = 1;
drawPoly(mainWin,rect,numPoints,fillFlag,bkCol,0,[],[]);
%% Generate "circles" image

numCircs = 50;
maxDiam = 80; %in pixels
drawCircles(mainWin,rect,numCircs,maxDiam,bkCol,0, [], []);

%% Close screen
sca;