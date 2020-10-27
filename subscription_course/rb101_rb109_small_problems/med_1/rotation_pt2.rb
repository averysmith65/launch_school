def rotate_array(arr)
	arr[1..-1] + [arr[0]]
end

def rotate_rightmost_digits(numbers, x)
	if x == 1
		return numbers
	else
	  arr = numbers.digits.reverse
	  reduc = arr.length - x 
	  arr1 = arr.drop(reduc)
	  arr.pop(x)
	  (arr + rotate_array(arr1)).join.to_i
	end
end
#rotate_rightmost_digits(735291, 1) 
# rotate_rightmost_digits(735291, 2) 
# rotate_rightmost_digits(735291, 3) 
# rotate_rightmost_digits(735291, 4) 
# rotate_rightmost_digits(735291, 5) 
# rotate_rightmost_digits(735291, 6) 

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917