function psi=p2psi(p)
syms phi1 phi2 theta1 theta2 real;
p1=sin(phi1)*cos(theta1);
p2=sin(phi1)*sin(theta1);
p3=cos(phi1);
p4=sin(phi2)*cos(theta2);
p5=sin(phi2)*sin(theta2);
p6=cos(phi2);
px=kron([1,p1,p2,p3],[1,p4,p5,p6]);
eq=px(2:16)*p(2:16)';
eq1=diff(eq,phi1);eq2=diff(eq,phi2);
eq3=diff(eq,theta1);eq4=diff(eq,theta2);
[a,b,c,d]=solve(eq1,eq2,eq3,eq4);