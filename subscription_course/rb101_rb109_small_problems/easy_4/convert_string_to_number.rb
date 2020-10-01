def string_to_integer(string)
	num_hash = {'0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9}
	count = 0
	int_num = 0
	total_num = 0
  while count < string.size 
  	int_num = num_hash[string[count]]
  	exponet = (string.size - 1) - count
  	total_num += int_num * (10 ** exponet)
  	count += 1 
  end
  total_num
end



 # string_to_integer('4321') 
 # string_to_integer('570') 
p string_to_integer('123456789987654321') == 123456789987654321
p string_to_integer('570') == 570

#exponet = string.size -1 
#use count to keep track of which exponent to use 