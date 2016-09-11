function rho=MLErho(n,base,rho0)
 t=rho2t(rho0);
 global f;
 options = optimset('MaxFunEvals',8000);
[t,~,f]=fminunc(@Mlike,t,options,n,base);
rho=t2rho(t);