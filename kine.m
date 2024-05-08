function [dx,dy,dpsi,du,dv,dr] = kin(u,v,r,X,Y,N,u_r,v_r)
%% 常规系数
m=23.8; I_z=1.76;x_g=0.046;l_2=2;w_2=1;
sto_u=[];sto_r=[];sto_v=[];
X_du=-2.0;X_u=-0.72253;X_uu=-1.32742;X_uuu=-5.86643;
Y_dv=-10.0;Y_v=-0.889665;Y_vv=-36.47287;Y_rv=-0.805;Y_r=-0.725;Y_dr=0.0;
Y_vr=-0.845;Y_rr=-3.45;
N_dr=-1.0;N_dv=0;N_v=0.03130;N_vv=3.95645;N_rv=0.13;N_r=-1.9;N_vr=0.08;N_rr=-0.75;

%刚性惯性矩阵 刚体的科氏力与向心力矩阵
M_RB=[m 0 0;0 m m*x_g;0 m*x_g I_z];
M_A=[-X_du 0 0;0 -Y_dv -Y_dr;0 -N_dv -N_dr];
C_RB=[0 0 -m*(x_g*r+v);0 0 m*u;m*(x_g*r+v) -m*u 0];
M=M_RB+M_A;
%水动力附加质量矩阵 
C_A=[0 0 Y_dv*v_r+Y_dr*r;0 0 -X_du*u_r;-Y_dv*v_r-0.5*Y_dr*r X_du*u_r 0];
D=[-X_u-X_uu*abs(u_r)-X_uuu*u_r^2 0 0;0 -Y_v-Y_vv*abs(v_r)-Y_rv*abs(r) -Y_r-Y_vr*abs(v_r)-Y_rr*abs(r);0 ...
     -N_v-N_vv*abs(v_r)-N_rv*abs(r) -N_r-N_vr*abs(v_r)-N_rr*abs(r)];
%V,V_r Marix
V=[u;v;r];
V_r=[u_r,v_r,r]
% force
tao_wave=[X_wave,Y_wave,N_wave];
tao_wind=[X_wind,Y_wind,N_wind];
tao=[X,Y,N];

V_dot=M^-1*tao+M^-1*tao_wind-M^-1*C_RB*V-(M^-1*C_A*V_r-M^-1*D*V_r);
u_dot=V_dot(1,1);
v_dot=V_dot(2,1);
r_dot=V_dot(3,1);

x_dot=cos(psi)*u-sin(psi)*v;
y_dot=sin(psi)*u+cos(psi)*v;
psi_dot=r;