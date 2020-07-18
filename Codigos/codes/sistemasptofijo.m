function sistemasptofijo(x0, N)

n = size(x0,1);
if n == 1
   x0 = x0';
end
i = 1;
x(:,1) = x0;
tol = 1e-05;
while i <= N
   x(:,i+1) = G(x(:,i));
   if abs(x(:,i+1)-x(:,i)) < tol		%stopping criterion
      disp('The procedure was successful after k iterations')
      k = i
      disp('Iterated solution of nonlinear system')
      x = x'
      return
   end
   i = i+1;
end
if abs(x(:,i)-x(:,i-1)) > tol | i > N
   disp('The procedure was unsuccessful')
   disp('Condition |x(i+1)-x(i)| < tol was not sastified')
   tol
   disp('Please, examine the sequence of iterates')
   disp('In case you observe convergence, then increase the maximum number of iterations')
   disp('In case of divergence, try another initial approximation x0')
   x = x'
end
%this part has to be changed accordingly with the specific function G(x)
function y = G(x)
y = [(1/3)*cos(x(2)*x(3))+1/6;
   (1/9)*sqrt(x(1)^2 + sin(x(3)) + 1.06) - 0.1;
   (-1/20)*exp(-x(1)*x(2)) - (10*pi - 3)/60];