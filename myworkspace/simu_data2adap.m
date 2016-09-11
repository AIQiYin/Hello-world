function n=simu_data2adap(rho,N,psi)
% psi=[1/sqrt(2)  1/sqrt(2)  1/sqrt(2)   1/sqrt(2)  1  0
%      1/sqrt(2)  -1/sqrt(2) 1i/sqrt(2) -1i/sqrt(2) 0  1];        %DA,RL,HV
base=zeros(4,36);
for m=1:3
for n=1:3
for i=1:2
    for j=1:2
        base(:,12*(m-1)+4*(n-1)+(i-1)*2+j)=kron(psi(:,2*(m-1)+i),psi(:,2*(n-1)+j));
    end
end
end
end
n=zeros(4,9);
for j=1:9
for k=1:4
   prob=base(:,4*(j-1)+k)'*rho*base(:,4*(j-1)+k);
   for i=1:N
       if prob>=rand
           n(k,j)=n(k,j)+1;
       end
   end
end
% a=sum(n(:,j));
% if N-a>4
%     n(1,j)=floor(N*(n(1,j)/a));n(2,j)=floor(N*(n(2,j)/a));
%     n(3,j)=floor(N*(n(3,j)/a));n(4,j)=floor(N*(n(4,j)/a));
% else if a-N>4
%          n(1,j)=ceil(N*(n(1,j)/a));n(2,j)=ceil(N*(n(2,j)/a));
%          n(3,j)=ceil(N*(n(3,j)/a));n(4,j)=ceil(N*(n(4,j)/a));
%     end
% end
end