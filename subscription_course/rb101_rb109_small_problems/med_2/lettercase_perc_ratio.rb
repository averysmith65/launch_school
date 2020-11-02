def letter_percentages(str)
	arr = str.chars
	arr_up = ("A".."Z").to_a
	arr_down = ("a".."z").to_a
	uppercase = 0
	lowercase = 0
	none = 0
	arr.each do |char|
	  if arr_up.include?(char)
	  	uppercase +=1
	  elsif arr_down.include?(char)
	  	lowercase += 1
	  else
	  	none += 1	
	  end
  end
 total = uppercase.to_f + lowercase.to_f + none.to_f
 lowerval = (lowercase/total) * 100
 upperval = uppercase/total * 100
 noneval = (none/total * 100)
 lowerval = lowerval.to_i if lowerval == lowerval.to_i
 upperval = upperval.to_i if upperval == upperval.to_i
 noneval = noneval.to_i if noneval == noneval.to_i
 hsh = {:lowercase => lowerval, :uppercase => upperval, :neither => noneval}
end




# p letter_percentages('abCdef 123')
# p  letter_percentages('AbCd +Ef') 
# p  letter_percentages('123') 


p letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
p letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }
