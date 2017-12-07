function [B] = Bnk(M)
    w=zeros;
    B=zeros;
    if((-1)^M==1)
        for n=0:1:((M/2)-1)
            w(n+1)=((2*pi)./M)*(n+1/2);
            for k=0:1:((M/2)-1)
                B(n+1,k+1)=2*sin(((M-1)./2-k)*w(n+1));
            end
        end
    end
    if((-1)^M==-1)
        for n=0:1:(((M-1)/2)-1)
            w(n+1)=(((2*pi)./M)*(n+1/2));
            for k=0:1:(((M-1)/2)-1)
                B(n+1,k+1)=2*sin((((M-1)./2)-k)*w(n+1));
            end
        end
    end
end

