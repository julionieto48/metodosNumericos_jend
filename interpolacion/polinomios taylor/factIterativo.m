function [fact] = factIterativo(num)

fact = 1 ;
for(i = 1 : num ) % 1 2 3 4 5
    fact = i * fact ; % 1*1 ; 2*1 ; 3*2 ; 4*6 ; 5*24
end

end

