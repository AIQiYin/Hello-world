function likelihood=Mlike(t,n,base)
rho=t2rho(t);
l=0;
for i=1:length(n)
    l=l+real(n(i)*log(trace(rho*base(i))));
end
likelihood=-l;