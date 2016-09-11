clc;clear;
sigma0=[1,0;0,1];sigma1=[0,1;1,0];sigma2=[0,-1i;1i,0];sigma3=[1,0;0,-1];
base={sigma0,sigma1,sigma2,sigma3};
% syms p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 real
% p=[p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15];
% rhop=zeros(4);
% for i=1:4
%     for j=1:4
%         rhop=rhop+p((i-1)*4+j)*kron(base{i},base{j});
%     end
% end
% rhop=rhop/4;

r=0.99;
rhoreal=evenbell(r);
N=100;
[p,ex]=psimu_data2(rhoreal,N);
x=zeros(4);
for i=1:4
    for j=1:4
        x=x+p((i-1)*4+j)*kron(base{i},base{j});
    end
end
x=x/4;
if min(eig(x))<0
    step=-min(eig(x));x=x+step*eye(4);
end
rhomeas=x/trace(x);
fidelity=fidelity2(rhomeas,rhoreal)

dp=sym('dp','real');
if min(eig(x))<0
     step1=0;step2=1;
     y=x;px=(abs(p)+1)/2;
     while min(eig(y))>1e-10||min(eig(y))<0
           step=(step1+step2)/2;
           for k=2:16
               eq=log(1-dp/px(k))*px(k)-c;
               dp=double(solve(eq));
           end
           y=x+step*eye(4);
           if min(eig(y))>0
               step2=step;
           else step1=step;
           end 
     end
     x=y;
end


sym dp real;
eq=(1+dp/p(i))^(p(i))*(1-dp/(1-p(i)))-c;
dp=solve(eq);

