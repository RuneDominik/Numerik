#Implementation of the exponetial functions series expantion.
#Author: Dominik, Rune (183727) and Geyer, Felix (183640)
function s = expsum(x, n)
s = 0;
for k=0:n
  s = s +  (x)^k / prod(1:k);
  k = k+1;
end
