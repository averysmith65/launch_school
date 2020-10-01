def running_total(arry)
	new_arry = []
	running_total = 0
	for element in arry 
    running_total += element
    new_arry << running_total
	end
	return new_arry
end










# p running_total([2, 5, 13]) 
# p running_total([14, 11, 7, 15, 20]) 
# p running_total([3]) 
# p running_total([]) 


p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []