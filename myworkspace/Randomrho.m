n=4;
H = 2*(randn(n) + 1i*randn(n)) - (1+1i);
H = H + H';
p = 10*H;
p = p*p'/trace(p*p')
4/3*trace(p^2)-1/3