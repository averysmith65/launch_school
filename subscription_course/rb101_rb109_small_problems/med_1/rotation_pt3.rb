def rotate_array(arr)
	arr[1..-1] + [arr[0]]
end

def rotate_rightmost_digits(number, n)
  all_digits = number.digits.reverse
  all_digits[-n..-1] = rotate_array(all_digits[-n..-1])
  all_digits.join.to_i
end


def max_rotation(num)
	arr = num.digits
	count = 0
	until count == arr.size
	  num = rotate_rightmost_digits(num, (arr.size - count))
	  count += 1
  end
  num
end



# p max_rotation(735291) 
# p max_rotation(3) 
# p max_rotation(35) 
# p max_rotation(105) 
# p max_rotation(8_703_529_146) 

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845