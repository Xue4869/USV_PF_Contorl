%% Task Waypoints
% Waypoints = [0 30; 30 30; 30 -30; -30 -30; -30 0; -5 0];
 Waypoints = [80 0;120 0];
% Waypoints = [30 0; 50 5;70 15;90 30];
WPNum = size(Waypoints,1);

%% Inital Pose
P0 = [0,0];
Yaw0 = 0;  %Deg