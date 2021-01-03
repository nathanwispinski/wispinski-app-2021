% reachExampleFig.m
% Figure 1D
% Plot experimental setup with example target-distractor and
% target-obstacle reach trajectories

clear all; close all; clc;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% Load in a subject's data
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Specify directory with scripts and data files for this project
homeDir = pwd; % Home
addpath(homeDir)

sub = 1; % Choose a subject

dataDir = [homeDir '\Data']; % Folder with all participant data .mat files
cd(dataDir);
subFolders = dir('OR*'); % Identify in Study 2 Files

load(subFolders(sub).name); % Load in data_struct for this subject


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% Plot target-distractor trial in 3D
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Find target-distractor trials that start on the left side
targDistractor = find(data_struct.matData.startSide == 1 & ...
    (data_struct.matData.startSide == data_struct.matData.reachSide));
trial = targDistractor(6); % Choose a target-distractor trial to plot

pods = figure; hold on; axis equal; view(-20,25);
    % Plot example reach
plot3(data_struct.newFda.x(trial,:)-.3,data_struct.newFda.y(trial,:),data_struct.newFda.z(trial,:)*-1,'linew',2)
    % Left iPod
patch([-0.14 -0.06 -0.06 -0.14]',[0.03 0.03 0.03 0.03]',[0 0 0.14 0.14]',[0.94 0.94 0.94]); % back
patch([-0.14 -0.06 -0.06 -0.14]',[0 0 0 0]',[0 0 0.14 0.14]',[0.94 0.94 0.94]); % front
patch([-0.14 -0.14 -0.14 -0.14]',[0 0.03 0.03 0]',[0 0 0.14 0.14]',[0.94 0.94 0.94]); % left
patch([-0.06 -0.06 -0.06 -0.06]',[0 0.03 0.03 0]',[0 0 0.14 0.14]',[0.94 0.94 0.94]); % right
patch([-0.14 -0.06 -0.06 -0.14]',[0 0 0.03 0.03]',[0.14 0.14 0.14 0.14]',[0.94 0.94 0.94]); % top
    % Right iPod
patch([0.14 0.06 0.06 0.14]',[0.03 0.03 0.03 0.03]',[0 0 0.14 0.14]',[0.94 0.94 0.94]); % back
patch([0.14 0.06 0.06 0.14]',[0 0 0 0]',[0 0 0.14 0.14]',[0.94 0.94 0.94]); % front
patch([0.14 0.14 0.14 0.14]',[0 0.03 0.03 0]',[0 0 0.14 0.14]',[0.94 0.94 0.94]); % left
patch([0.06 0.06 0.06 0.06]',[0 0.03 0.03 0]',[0 0 0.14 0.14]',[0.94 0.94 0.94]); % right
patch([0.14 0.06 0.06 0.14]',[0 0 0.03 0.03]',[0.14 0.14 0.14 0.14]',[0.94 0.94 0.94]); % top
    % Table
patch([-0.425 0.425 0.425 -0.425]',[-0.3 -0.3 0.3 0.3]',[0 0 0 0]',[0.94 0.94 0.94]); % top
    % Start circle
C = [0,-0.2,0.003]; R = .005; % Center and radius of circle
teta=0:0.01:2*pi; x=C(1)+R*cos(teta); y=C(2)+R*sin(teta); z=C(3)+zeros(size(x));
patch(x,y,z,'k');
C = [0,-0.2,0.003]; R = .003; % Center and radius of circle
teta=0:0.01:2*pi; x=C(1)+R*cos(teta); y=C(2)+R*sin(teta); z=C(3)+zeros(size(x));
patch(x,y,z,'w');
    % Fixation
patch([-0.002 0.002 0.002 -0.002]',[0.09 0.09 0.11 0.11]',[0.003 0.003 0.003 0.003]',[0 0 0],'EdgeColor','None'); % back
patch([-0.01 0.01 0.01 -0.01]',[0.098 0.098 0.102 0.102]',[0.003 0.003 0.003 0.003]',[0 0 0],'EdgeColor','None'); % back
    % Left circle
C = [-0.3,0,0.003]; R = .005; % Center and radius of circle
teta=0:0.01:2*pi; x=C(1)+R*cos(teta); y=C(2)+R*sin(teta); z=C(3)+zeros(size(x));
patch(x,y,z,'k');
C = [-0.3,0,0.003]; R = .003; % Center and radius of circle
teta=0:0.01:2*pi; x=C(1)+R*cos(teta); y=C(2)+R*sin(teta); z=C(3)+zeros(size(x));
patch(x,y,z,'w');
    % Right circle
C = [0.3,0,0.003]; R = .005; % Center and radius of circle
teta=0:0.01:2*pi; x=C(1)+R*cos(teta); y=C(2)+R*sin(teta); z=C(3)+zeros(size(x));
patch(x,y,z,'k');
C = [0.3,0,0.003]; R = .003; % Center and radius of circle
teta=0:0.01:2*pi; x=C(1)+R*cos(teta); y=C(2)+R*sin(teta); z=C(3)+zeros(size(x));
patch(x,y,z,'w');
    % Plotting options
xlim([-.42 .42]); ylim([-.25 .25]); zlim([-.01 .3]);
axis equal;
xlabel('x (cm)');
ylabel('y (cm)');
zlabel('z (cm)');
set(gca,'FontSize',12);
set(gcf,'color','w');

cd(homeDir);
saveas(gcf,'targetDistractorExample','svg'); % Save figure in .svg file format




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% Plot target-obstacle trial in 3D
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Find target-distractor trials that start on the left side
targDistractor = find(data_struct.matData.startSide == 1 & ...
    (data_struct.matData.startSide ~= data_struct.matData.reachSide));
trial = targDistractor(10); % Choose a target-distractor trial to plot

pods = figure; hold on; axis equal; view(-20,25);
    % Plot example reach
plot3(data_struct.newFda.x(trial,:)-.3,data_struct.newFda.y(trial,:),data_struct.newFda.z(trial,:)*-1,'linew',2)
    % Left iPod
patch([-0.14 -0.06 -0.06 -0.14]',[0.03 0.03 0.03 0.03]',[0 0 0.14 0.14]',[0.94 0.94 0.94]); % back
patch([-0.14 -0.06 -0.06 -0.14]',[0 0 0 0]',[0 0 0.14 0.14]',[0.94 0.94 0.94]); % front
patch([-0.14 -0.14 -0.14 -0.14]',[0 0.03 0.03 0]',[0 0 0.14 0.14]',[0.94 0.94 0.94]); % left
patch([-0.06 -0.06 -0.06 -0.06]',[0 0.03 0.03 0]',[0 0 0.14 0.14]',[0.94 0.94 0.94]); % right
patch([-0.14 -0.06 -0.06 -0.14]',[0 0 0.03 0.03]',[0.14 0.14 0.14 0.14]',[0.94 0.94 0.94]); % top
    % Right iPod
patch([0.14 0.06 0.06 0.14]',[0.03 0.03 0.03 0.03]',[0 0 0.14 0.14]',[0.94 0.94 0.94]); % back
patch([0.14 0.06 0.06 0.14]',[0 0 0 0]',[0 0 0.14 0.14]',[0.94 0.94 0.94]); % front
patch([0.14 0.14 0.14 0.14]',[0 0.03 0.03 0]',[0 0 0.14 0.14]',[0.94 0.94 0.94]); % left
patch([0.06 0.06 0.06 0.06]',[0 0.03 0.03 0]',[0 0 0.14 0.14]',[0.94 0.94 0.94]); % right
patch([0.14 0.06 0.06 0.14]',[0 0 0.03 0.03]',[0.14 0.14 0.14 0.14]',[0.94 0.94 0.94]); % top
    % Table
patch([-0.425 0.425 0.425 -0.425]',[-0.3 -0.3 0.3 0.3]',[0 0 0 0]',[0.94 0.94 0.94]); % top
    % Start circle
C = [0,-0.2,0.003]; R = .005; % Center and radius of circle
teta=0:0.01:2*pi; x=C(1)+R*cos(teta); y=C(2)+R*sin(teta); z=C(3)+zeros(size(x));
patch(x,y,z,'k');
C = [0,-0.2,0.003]; R = .003; % Center and radius of circle
teta=0:0.01:2*pi; x=C(1)+R*cos(teta); y=C(2)+R*sin(teta); z=C(3)+zeros(size(x));
patch(x,y,z,'w');
    % Fixation
patch([-0.002 0.002 0.002 -0.002]',[0.09 0.09 0.11 0.11]',[0.003 0.003 0.003 0.003]',[0 0 0],'EdgeColor','None'); % back
patch([-0.01 0.01 0.01 -0.01]',[0.098 0.098 0.102 0.102]',[0.003 0.003 0.003 0.003]',[0 0 0],'EdgeColor','None'); % back
    % Left circle
C = [-0.3,0,0.003]; R = .005; % Center and radius of circle
teta=0:0.01:2*pi; x=C(1)+R*cos(teta); y=C(2)+R*sin(teta); z=C(3)+zeros(size(x));
patch(x,y,z,'k');
C = [-0.3,0,0.003]; R = .003; % Center and radius of circle
teta=0:0.01:2*pi; x=C(1)+R*cos(teta); y=C(2)+R*sin(teta); z=C(3)+zeros(size(x));
patch(x,y,z,'w');
    % Right circle
C = [0.3,0,0.003]; R = .005; % Center and radius of circle
teta=0:0.01:2*pi; x=C(1)+R*cos(teta); y=C(2)+R*sin(teta); z=C(3)+zeros(size(x));
patch(x,y,z,'k');
C = [0.3,0,0.003]; R = .003; % Center and radius of circle
teta=0:0.01:2*pi; x=C(1)+R*cos(teta); y=C(2)+R*sin(teta); z=C(3)+zeros(size(x));
patch(x,y,z,'w');
    % Plotting options
xlim([-.42 .42]); ylim([-.25 .25]); zlim([-.01 .3]);
axis equal;
xlabel('x (cm)');
ylabel('y (cm)');
zlabel('z (cm)');
set(gca,'FontSize',12);
set(gcf,'color','w');

cd(homeDir);
saveas(gcf,'targetObstacleExample','svg'); % Save figure in .svg file format











