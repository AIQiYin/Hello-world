function n=simu_data(rho,Psi,N)
n=zeros(1,6);                      %12 , 35 , 46
prob=Psi(:,1)'*rho*Psi(:,1); 
for i=1:N
    if prob>=rand
        n(1)=n(1)+1;
    end
end
n(2)=N-n(1);
prob=Psi(:,3)'*rho*Psi(:,3); 
for i=1:N
    if prob>=rand
        n(3)=n(3)+1;
    end
end
n(5)=N-n(3);
prob=Psi(:,4)'*rho*Psi(:,4); 
for i=1:N
    if prob>=rand
        n(4)=n(4)+1;
    end
end
n(6)=N-n(4);