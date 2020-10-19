def uppercase?(str)
	arr = []
	str.each_char do |c| 
    arr << c.match?(/[^a-z]/)
	end
  arr.each do |x|
  	if x == false
  		return false
  	else 
  	  true
  	end 
  end
  return true
end

# p uppercase?('t') 
# p uppercase?('T') 
#  p uppercase?('Four Score') 
#  p uppercase?('FOUR SCORE') 
#  p uppercase?('4SCORE!') 
#  p uppercase?('') 

p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true