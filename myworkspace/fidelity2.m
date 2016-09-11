function f=fidelity2(rhomeas,rho)
[V,E]=eig(rhomeas);
P=zeros(4);
for i=1:4
    P=P+sqrt(E(i,i))*V(:,i)*V(:,i)';
end
F=P*rho*P;
[V1,E1]=eig(F);
P=zeros(4);
for i=1:4
    P=P+sqrt(E1(i,i))*V1(:,i)*V1(:,i)';
end
f=real(trace(P)^2);