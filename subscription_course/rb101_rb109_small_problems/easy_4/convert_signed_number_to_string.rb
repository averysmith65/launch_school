def integer_to_string(int)
	str_hash = {0 => '0', 1 => '1', 2 => '2', 3 => '3', 4 => '4', 5 => '5', 6 => '6', 7 => '7', 8 => '8', 9 => '9'}
  count = 0
  int_arry = int.digits.reverse
  str = ''
  while count < int_arry.size
  	str += str_hash[int_arry[count]]
  	count += 1
  end
  str
end

def signed_integer_to_string(int)
	if int < 0
		'-' + integer_to_string(int.abs)
	elsif int == 0
		integer_to_string(int.abs)
	else 
		'+' + integer_to_string(int.abs)
	end
end


# p signed_integer_to_string(4321) 
# p signed_integer_to_string(-123) 
# p signed_integer_to_string(0) 


p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'