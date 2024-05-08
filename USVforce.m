function [Out]= USVforce(In)
% In = [u;v;r(rad/s);Xprop(N);NDisturb;Deltar(rad)]
% Out = [dotu;dotw;dotr(rad/s/s)]

u = In(1);
v = In(2);
r = In(3);
% u_c=0.01;
% v_c=0.01;
X_C = In(4);
Y_C= In(5);
N_C= In(6);
% X_wind = In(7);
% Y_wind= In(8);
% N_wind= In(9);
% X_wind=0;Y_wind=0;N_wind=10*sin(0.5*randi(10));
% X_wave=0;Y_wave=0;N_wave=0;
X_D=In(7);
Y_D=In(8);
N_D=In(9);

global usv;
% Xsum = auv.Xuu*u*abs(u)+(auv.Xvr+auv.m)*v*r+(auv.Xrr+auv.m*auv.xg)*r*r+Xprop;
% Ysum = auv.Yvv*v*abs(v)+auv.Yrr*r*abs(r)+(auv.Yur-auv.m)*u*r+auv.Yuv*u*v+auv.Yuudelta*u*u*Deltar;
% Nsum = NDisturb+auv.Nvv*v*abs(v)+auv.Nrr*r*abs(r)+(auv.Nur-auv.m*auv.xg)*u*r+auv.Nuv*u*v+auv.Nuudelta*u*u*Deltar;
% X_H = usv.Xuu*u_r*abs(u_r)+usv.Xvr*v_r*r+usv.Xrr*r*r;
% Y_H = usv.Yvv*v_r*abs(v_r)+usv.Yrr*r*abs(r)+usv.Yur*u_r*r+usv.Yuv*u_r*v_r;
% N_H= usv.Nvv*v_r*abs(v_r)+usv.Nrr*r*abs(r)+usv.Nur*u_r*r+usv.Nuv*u_r*v_r;
% X_H = usv.Xu*u_r+usv.Xuu*abs(u_r)*u_r+usv.Xuuu*u_r*u_r*u_r;
% Y_H =usv.Xdu*u_r*r+usv.Yv*v_r+usv.Yr*r+usv.Yvv*v_r*abs(v_r)+ ...
%     usv.Yvr*abs(v_r)*r+usv.Yrv*abs(r)*v_r+usv.Yrr*r*abs(r);
% N_H= usv.Nv*v_r+usv.Nr*r+usv.Nvv*abs(v_r)*v_r+usv.Nvr*abs(v_r)*r+usv.Nrv*abs(r)*v_r+usv.Nrr*r*abs(r);
X_H=0;Y_H=0;N_H=0;
X_RB=usv.m*v*r+usv.m*usv.xg*r*r;
Y_RB=-usv.m*u*r;
N_RB=-usv.m*usv.xg*u*r;
Xsum=X_H+X_C+X_D+X_RB;
Ysum=Y_H+Y_C+Y_D+Y_RB;
Nsum=N_H+N_C+N_D+N_RB;
Out = usv.M\[Xsum;Ysum;Nsum];
end