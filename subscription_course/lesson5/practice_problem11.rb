arr = [[2], [3, 5, 7], [9], [11, 13, 15]]

arr.map do |index|
	new_arry = []
	index.select do |number|
		new_arry << number % 3 == 0
	end
	print new_arry
end