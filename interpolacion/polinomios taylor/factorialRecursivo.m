function [num] = factorialRecursivo(num)
% N!   ->  si N = 0 (caso base)  es el pto de inicio y final
%      -> si N > 0  (funcion de recursion )

% ejemplo factorial de tres
%    3!  =  3 * 2 * 1
%        =  3 * 2!

if (num == 0)
    num = 1 ;
elseif (num > 0)
    num = num * factorialRecursivo(num - 1)  ;
    
end

end

% 3! = 3  *3-1 !                   n = 3
%    = 3  * 2  !
%         * 2  ! = 2 * 2-1  !      n = 2
%                 = 2 *  1  !