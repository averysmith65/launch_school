def oddities(arry)
	odd_arry = []
  count = 0
	while count < arry.size
    odd_arry << arry[count] 
    count += 2
  end
  odd_arry
end





p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []