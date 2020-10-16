def sum_of_sums(arr)
	count = 0
	total = 0
	arr1 = []
	until count == arr.size
    arr1 << arr[0..count]
    count += 1
  end
  arr1.flatten.each do |num|
    total += num
  end
  total
end




p sum_of_sums([3, 5, 2]) 
p sum_of_sums([1, 5, 7, 3]) 
p sum_of_sums([4]) 
p sum_of_sums([1, 2, 3, 4, 5]) 

# sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
# sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
# sum_of_sums([4]) == 4
# sum_of_sums([1, 2, 3, 4, 5]) == 35