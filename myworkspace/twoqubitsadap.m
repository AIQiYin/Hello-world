clc;clear;
r=rand;
rho=evenbell(r)+rand*eye(4)/4;rho=rho/trace(rho);
p=rho2p(rho)