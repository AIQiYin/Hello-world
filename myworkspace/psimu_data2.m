function [p,ex]=psimu_data2(rho,N)
sigma0=[1,0;0,1];sigma1=[0,1;1,0];sigma2=[0,-1i;1i,0];sigma3=[1,0;0,-1];
base={sigma0,sigma1,sigma2,sigma3};
p=zeros(1,16);
for i=1:4
    for j=1:4
        ex(i,j)=real(trace(rho*kron(base{i},base{j})));
        p((i-1)*4+j)=ex(i,j)+sqrt(1-ex(i,j)^2)*(2*rand-1)/sqrt(N);
        if p((i-1)*4+j)>1
            p((i-1)*4+j)=1;
        else if p((i-1)*4+j)<-1;
                p((i-1)*4+j)=-1;
            end
        end
    end
end