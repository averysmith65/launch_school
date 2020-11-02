def balanced?(str)
	arr = str.chars
	left = 0
	right = 0
	arr.each do |char|
    if char.include?("(")
    	left += 1
    elsif char.include?(")")
    	right += 1
    elsif right > left
    	return false
    end
  end
  left == right 
end
    	




#p balanced?('What (is) this?') 
# balanced?('What is) this?') 
# balanced?('What (is this?') 
# balanced?('((What) (is this))?') 
# balanced?('((What)) (is this))?')
# balanced?('Hey!') 
# balanced?(')Hey!(') 
# balanced?('What ((is))) up(') 

p balanced?('What (is) this?') == true
 p balanced?('What is) this?') == false
 p balanced?('What (is this?') == false
 p balanced?('((What) (is this))?') == true
 p balanced?('((What)) (is this))?') == false
 p balanced?('Hey!') == true
 p balanced?(')Hey!(') == false
 p balanced?('What ((is))) up(') == false