function u = OrientationDegSat(in)%psi in 0-360
if in > 360
    u = in - 360;
elseif in<0
    u = in+360;
else
    u = in;
end