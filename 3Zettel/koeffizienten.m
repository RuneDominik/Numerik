function c = koeffizienten(f,s)
% Steigungsschema zur Berechnung der Koeffizienten c_i
	c = f(s);
	n = length(s);
	for(i=2:n)
		for(k=n:-1:i)
			c(k) = (c(k)-c(k-1)) / (s(k)-s(k-i+1));
		end
	end
end
