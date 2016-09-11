clc;clear;
syms t1 t2 t3 t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 real
t=[t1 t2 t3 t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16];
rho=diag(t(1:4));
rho(2)=t(5)+1i*t(6);
rho(3)=t(11)+t(12)*1i;
rho(4)=t(15)+1i*t(16);
rho(3,2)=t(7)+1i*t(8);
rho(4,2)=t(13)+1i*t(14);
rho(4,3)=t(9)+1i*t(10);
rho=rho'*rho;
rho=[                t1^2 + t11^2 + t12^2 + t15^2 + t16^2 + t5^2 + t6^2,  (t13 +1i*t14)*(t15 -1i*t16)+(t11-1i*t12)*(t7 +1i*t8)+t2*(t5 -1i*t6), (t15 -1i*t16)*(t9 +1i*t10) + t3*(t11 -1i*t12), t4*(t15 -1i*t16) 
  (t13 -1i*t14)*(t15 +1i*t16) + (t11 +1i*t12)*(t7 -1i*t8) + t2*(t5 +1i*t6),                                  t13^2 + t14^2 + t2^2 + t7^2 + t8^2,  (t13-1i*t14)*(t9 +1i*t10)+ t3*(t7 -1i*t8), t4*(t13 -1i*t14) 
                          (t15 +1i*t16)*(t9 -1i*t10) + t3*(t11 +1i*t12),                             (t13 +1i*t14)*(t9 -1i*t10) + t3*(t7 +1i*t8),                         t10^2 + t3^2 + t9^2,  t4*(t9 -1i*t10) 
                                                       t4*(t15 +1i*t16),                                                         t4*(t13 +1i*t14),                              t4*(t9 +1i*t10),           t4^2];

% sigma0=[1,0;0,1];sigma1=[0,1;1,0];sigma2=[0,-1i;1i,0];sigma3=[1,0;0,-1];
% base={sigma0,sigma1,sigma2,sigma3};
% syms p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 real
% p=[p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15];
% rhop=zeros(4);
% for i=1:4
%     for j=1:4
%         rhop=rhop+p((i-1)*4+j)*kron(base{i},base{j});
%     end
% end
% rhop=rhop/4;

%approximately randon rho
% sigma0=[1,0;0,1];sigma1=[0,1;1,0];sigma2=[0,-1i;1i,0];sigma3=[1,0;0,-1];
% base={sigma0,sigma1,sigma2,sigma3};p=zeros(1,15);
% for i=1:15
%     p(i)=2*rand-1;
% end
% r=sqrt(3)*rand;p=r*p/norm(p);p=[1,p];
% x=zeros(4);
% for i=1:4
%     for j=1:4
%         x=x+p((i-1)*4+j)*kron(base{i},base{j});
%     end
% end
% x=x/4;
% if min(eig(x))<0
%     x=x+rand*kron(base{1},base{1});
% end
% x=[0.6852            -0.0566 - 0.0009i  -0.2650 - 0.0511i   0.0681 + 0.1645i
%   -0.0566 + 0.0009i   0.8717            -0.2543 - 0.1052i  -0.0386 + 0.2373i
%   -0.2650 + 0.0511i  -0.2543 + 0.1052i   0.4830            -0.0501 - 0.0086i
%    0.0681 - 0.1645i  -0.0386 - 0.2373i  -0.0501 + 0.0086i   0.4371          ];

%建立rho(t)=x等式方程
eq1=rho(1,1)-x(1,1);eq2=rho(2,2)-x(2,2);eq3=rho(3,3)-x(3,3);eq4=rho(4,4)-x(4,4);
eq5=simplify(rho(1,2)+rho(1,2)')-(x(1,2)+x(1,2)');eq6=(simplify(rho(1,2)-rho(1,2)')-(x(1,2)-x(1,2)'))/1i;
eq7=simplify(rho(1,3)+rho(1,3)')-(x(1,3)+x(1,3)');eq8=(simplify(rho(1,3)-rho(1,3)')-(x(1,3)-x(1,3)'))/1i;
eq9=simplify(rho(1,4)+rho(1,4)')-(x(1,4)+x(1,4)');eq10=(simplify(rho(1,4)-rho(1,4)')-(x(1,4)-x(1,4)'))/1i;
eq11=simplify(rho(2,3)+rho(2,3)')-(x(2,3)+x(2,3)');eq12=(simplify(rho(2,3)-rho(2,3)')-(x(2,3)-x(2,3)'))/1i;
eq13=simplify(rho(2,4)+rho(2,4)')-(x(2,4)+x(2,4)');eq14=(simplify(rho(2,4)-rho(2,4)')-(x(2,4)-x(2,4)'))/1i;
eq15=simplify(rho(3,4)+rho(3,4)')-(x(3,4)+x(3,4)');eq16=(simplify(rho(3,4)-rho(3,4)')-(x(3,4)-x(3,4)'))/1i;
s=solve(eq1,eq2,eq3,eq4,eq5,eq6,eq7,eq8,eq9,eq10,eq11,eq12,eq13,eq14,eq15,eq16);
