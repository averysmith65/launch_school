


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











# p integer_to_string(4321) 
# p integer_to_string(0) 
# p integer_to_string(5000) 

p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'