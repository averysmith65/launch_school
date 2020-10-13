def letter_case_count(string)
	hash = {:lowercase => 0, :uppercase => 0, :neither => 0}
	string.each_char do |elem|
	  case 
	  when "abcdefghijklmnopqrstuvwxyz".include?(elem)
	    hash[:lowercase] += 1
	  when "ABCDEFGHIJKLMNOPQRSTUVWXYZ".include?(elem)
	  	hash[:uppercase] += 1
	  else 
	  	hash[:neither] += 1
	  end
	end
	hash
end




letter_case_count('abCdef 123') 
letter_case_count('AbCd +Ef') 
letter_case_count('123')
letter_case_count('')

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }