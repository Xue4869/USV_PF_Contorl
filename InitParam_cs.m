%% Task Waypoints

% Waypoints = [0 30; 30 30; 30 -30; -30 -30; -30 0; -5 0];
% Waypoints = [30 0; 30 30];
P0 = [0,0];Waypoints = [100 0;200 0];
WPNum = size(Waypoints,1);

%% Inital Pose
P0 = [0,0];
B0=[0,-30];
Yaw0 = 0;  %Deg
u0=0.5;


global usv;%cybership II

usv.m = 23.8; %kg
usv.Izz = 1.76;
usv.xg = 0.046; %m

usv.Xdu = -2;
usv.Xu=-0.72253;
usv.Xuu = -1.62; %kg/m
usv.Xuuu=-5.86643;
% usv.Xvr = 35.5;
% usv.Xrr = -1.93;
% usv.Xuudelta=-1.023;

usv.Ydv =-10.0;
usv.Ydr =0.0;
usv.Yr = -0.725;
usv.Yv =-0.889665;
usv.Yvv = -36.47287;
usv.Yrr = -3.45;
usv.Yrv =-0.805;
usv.Yvr =-0.845;

usv.Ndv = 0;
usv.Ndr =-1.0;
usv.Nv =0.03130;
usv.Nvv = 3.95645;
usv.Nrv = 0.13;
usv.Nr =-1.9;
usv.Nvr = 0.08;
usv.Nrr = -0.75;

usv.M = [usv.m-usv.Xdu,0,0;0,usv.m-usv.Ydv,usv.m*usv.xg-usv.Ydr;0,usv.m*usv.xg-usv.Ndv,usv.Izz-usv.Ndr];
