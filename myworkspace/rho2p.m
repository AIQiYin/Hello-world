function p=rho2p(rho)
sigma0=[1,0;0,1];sigma1=[0,1;1,0];sigma2=[0,-1i;1i,0];sigma3=[1,0;0,-1];
base={sigma0,sigma1,sigma2,sigma3};
for i=1:4
    for j=1:4
        p((i-1)*4+j)=real(trace(rho*kron(base{i},base{j})));
    end
end