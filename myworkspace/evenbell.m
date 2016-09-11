function rho=evenbell(R)
% for k=1:500
% Werner state√‹∂»æÿ’Ûof p
Psi1=[0,1/sqrt(2),1/sqrt(2),0]';Psi_=[0,1/sqrt(2),-1/sqrt(2),0]';
Phy=[1/sqrt(2),0,0,1/sqrt(2)]';Phy_=[1/sqrt(2),0,0,-1/sqrt(2)]';
  r=(sqrt(3)/2-0.0000001)*R;
  a=-1;p4=0;p3=0;p2=0;p1=0;
while a<0||p4<0||p3<0||p2<0||p1<0
  theta=rand*2*pi;phi=rand*pi;
  x=r*sin(phi)*cos(theta);y=r*sin(phi)*sin(theta);z=r*cos(phi);
  p=(x+y+z+0.5)/2;
  p1=p-x;
  p2=p-y;
  p3=p-z;
  p4=1-(p1+p2+p3);
  a=1-(p1^2+p2^2+p3^2+p4^2);
end
va=rand;
if va<0.25
    b=p4;p4=p1;p1=b;
else if va<0.5
        b=p4;p4=p2;p2=b;
    else if va<0.75
            b=p4;p4=p3;p3=b;
        end
    end
end
rho=(p1*Psi1*Psi1'+p2*Psi_*Psi_'+p3*Phy*Phy'+p4*Phy_*Phy_');
% X(k)=(p1^2+p2^2+p3^2+p4^2)*4/3-1/3;
% Y(k)=rand;
% end
% plot(X,Y,'.')
