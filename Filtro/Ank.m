function [A] = Ank(M)
    w=zeros;
    A=zeros;
    if(mod(M,2)==0)
        for k=0:M/2-1
            w(k+1)=2*pi*k/M;
            for n=0:M/2-1
                A(k+1,n+1)=2*cos(((M-1)/2-n)*w(k+1));
            end
        end
    else
        for k=0:(M-1)/2
            w(k+1)=2*pi*k/M;
            for n=0:(M-1)/2                
                if(n==((M-1)/2))
                    A(k+1,n+1)=1;
                else
                    A(k+1,n+1)=2*cos(((M-1)/2-n)*w(k+1));
                end
            end
        end
    end
end

