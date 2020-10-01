def century(int)
	num = which_century(int)
  last_two = num % 100 
  case 
  when last_two % 10 == 1 && last_two != 11
   	"#{num}st"
  when last_two % 10 == 2 && last_two != 12
    "#{num}nd"
  when last_two % 10 == 3 && last_two != 13
   	"#{num}rd"
  else 
   	"#{num}th"
  end
end


def which_century(int)
	if int % 100 == 0
	  div_num = int / 100 
	  div_num
  elsif int < 101
	  1
	else 
		div_num = int / 100 
		str_num = div_num + 1
		str_num
	end
end

puts century(2000)
puts century(2001)
puts century(1965) 
puts century(256) 
puts century(5)
puts century(10103)
puts century(1052)
puts century(1127) 
puts century(11201) 

# century(2000) == '20th'
# century(2001) == '21st'
# century(1965) == '20th'
# century(256) == '3rd'
# century(5) == '1st'
# century(10103) == '102nd'
# century(1052) == '11th'
# century(1127) == '12th'
# century(11201) == '113th'