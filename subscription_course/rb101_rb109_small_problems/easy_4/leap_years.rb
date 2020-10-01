def leap_year_4(int)
	if int % 4 == 0
		return true
	else
		return false
  end
end

def leap_year_100(int)
 	bool = leap_year_4(int)
 	if bool == true
 	  int % 100 != 0
 	else
 		return false
	end
end

def leap_year?(int)
  booll = leap_year_100(int)
  if booll 
  	return true
  else 
  	int % 400 == 0
  end
end



# p leap_year?(2016) 
# p leap_year?(2015) 
# p leap_year?(2100) 
# p leap_year?(2400) 
# p leap_year?(240000) 
# p leap_year?(240001) 
# p leap_year?(2000) 
# p leap_year?(1900) 
# p leap_year?(1752) 
# p leap_year?(1700) 
# p leap_year?(1) 
# p leap_year?(100) 
# p leap_year?(400) 


p leap_year?(2016) == true
p leap_year?(2015) == false
p leap_year?(2100) == false
p leap_year?(2400) == true
p leap_year?(240000) == true
p leap_year?(240001) == false
p leap_year?(2000) == true
p leap_year?(1900) == false
p leap_year?(1752) == true
p leap_year?(1700) == false
p leap_year?(1) == false
p leap_year?(100) == false
p leap_year?(400) == true