def digit_occur_once(int)
	arr = int.digits.reverse
  arr1 = arr.uniq
  arr == arr1
end



def featured(int)
	loop do 
		int += 1
		return int if int % 7 == 0 && int.odd? && digit_occur_once(int)
		break if int >= 9_876_543_210
	end
	'There is no possible number that fulfills those requirements.'
  
end


#p digit_occur_once(1_023_547)


# p featured(12) 
# p  featured(20) 
# p featured(21) 
# p  featured(997) 
# p  featured(1029) 
# p featured(999_999)
# p  featured(999_999_987) 

# p featured(9_999_999_999)

p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987

# featured(9_999_999_999)