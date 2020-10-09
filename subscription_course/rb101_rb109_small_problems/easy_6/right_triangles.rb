def triangle(n)
	count = 1
	until count == n + 1
		p ' ' * (n - count)  + '*' * count
		count += 1
	end
end





triangle(5)
triangle(9)