function [A]=ank(M)
%par
if((-1).^M)==1
    for i=0:(M/2-1)
        w(i+1)=((2*pi)/M)*(i);
        for j=0:1:(M/2-1)
            A(i+1,j+1)=2*cos(((M-1)./2-(j))*w(i+1));
        end
   end
end 
%Impar
if((-1).^M)==-1
    for ii=0:((M-1)/2)
        w(ii+1)=((2*pi)/M)*(ii);
        for jj=0:1:((M-1)/2)
            if(jj==(M-1)/2)
                A(ii+1,jj+1)=1;
            else
                A(ii+1,jj+1)=2.*cos(((M-1)./2-(jj)).*w(ii+1));   
            end
        end
    end
end        
A;
end 