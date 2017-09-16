function [y, ny] = ConvolucionDiscreta(x, nx, h, nh, Ts)
%Funcion para la convolucion de dos secuencias
%1 tiempo discreto, <1 tiempo continuo
    y=conv(x, h);
    %Se puede caclular con la longitud de las secuencias o con la suma de
    %los numeros finales de las secuencias
    ny=nx(1)+nh(1):Ts:nx(length(nx))+nh(length(nh));
end

