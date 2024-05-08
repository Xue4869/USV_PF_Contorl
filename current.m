function Out=current(In)
global usv
u_r=In(1);
v_r=In(2);
r=In(3);
X_H =usv.Xu*u_r+usv.Xuu*abs(u_r)*u_r+usv.Xuuu*u_r*u_r*u_r;
Y_H =usv.Xdu*u_r*r+usv.Yv*v_r+usv.Yr*r+usv.Yvv*v_r*abs(v_r)+ ...
    usv.Yvr*abs(v_r)*r+usv.Yrv*abs(r)*v_r+usv.Yrr*r*abs(r);
N_H=usv.Nv*v_r+usv.Nr*r+usv.Nvv*abs(v_r)*v_r+usv.Nvr*abs(v_r)*r+usv.Nrv*abs(r)*v_r+usv.Nrr*r*abs(r);
Out=[X_H,Y_H,N_H];
end