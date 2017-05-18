function a = pol(x, s, k)
if k == 1;
  a = 1;
else  
  a = (x-s(k-1))*pol(x, s, k-1);
end  