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

def string_to_signed_integer(string)
  str_arry = string.chars
  if str_arry.include?('-')
     str_arry.delete('-')
     -string_to_integer(str_arry.join(''))
  else 
    str_arry.delete('+')
    string_to_integer(str_arry.join(''))
  end
end




p string_to_signed_integer('4321') 
p string_to_signed_integer('-570') 
p string_to_signed_integer('+100') 
p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100