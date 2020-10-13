def swapcase(string)
	arr = string.chars
	arr.map do |elem|
		case 			
		when "ABCDEFGHIJKLMNOPQRSTUVWXYZ".include?(elem) 
			elem.downcase!
		else
			elem.capitalize!
		end
	end
	arr.join("")
end

p swapcase('CamelCase') 
p swapcase('Tonight on XYZ-TV') 

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'