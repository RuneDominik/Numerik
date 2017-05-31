function [yEval] = myPiecewiseInterpol(x, f, xEval)
  n = length(xEval);
  yEval = 1:n;
 for i = 1:n-1
  #yEval(i)= f(i) + (f(i+1)-f(i))/(x(i+1) - x(i)) .* (xEval(i) - x(i));
  
 end
end 