
% % 15 Dimension Sphere for two qubits, proved not sufficient.
% sigma0=[1,0;0,1];sigma1=[0,1;1,0];sigma2=[0,-1i;1i,0];sigma3=[1,0;0,-1];
% base={sigma0,sigma1,sigma2,sigma3};p=zeros(1,15);
% for i=1:15
%     p(i)=2*rand-1;
% end
% r=sqrt(3)*rand;p=r*p/norm(p);p=[1,p];
% rho=zeros(4);
% for i=1:4
%     for j=1:4
%         rho=rho+p((i-1)*4+j)*kron(base{i},base{j});
%     end
% end
% rho=rho/4;rr=eig(rho)

clc;clear;
syms t1 t2 t3 t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 a b c d real
t=[t1 t2 t3 t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16];
rho=[                t1^2 + t11^2 + t12^2 + t15^2 + t16^2 + t5^2 + t6^2,  (t13 +1i*t14)*(t15 -1i*t16)+(t11-1i*t12)*(t7 +1i*t8)+t2*(t5 -1i*t6), (t15 -1i*t16)*(t9 +1i*t10) + t3*(t11 -1i*t12), t4*(t15 -1i*t16) 
  (t13 -1i*t14)*(t15 +1i*t16) + (t11 +1i*t12)*(t7 -1i*t8) + t2*(t5 +1i*t6),                                  t13^2 + t14^2 + t2^2 + t7^2 + t8^2,  (t13-1i*t14)*(t9 +1i*t10)+ t3*(t7 -1i*t8), t4*(t13 -1i*t14) 
                          (t15 +1i*t16)*(t9 -1i*t10) + t3*(t11 +1i*t12),                             (t13 +1i*t14)*(t9 -1i*t10) + t3*(t7 +1i*t8),                         t10^2 + t3^2 + t9^2,  t4*(t9 -1i*t10) 
                                                       t4*(t15 +1i*t16),                                                         t4*(t13 +1i*t14),                              t4*(t9 +1i*t10),           t4^2];
