def word_to_digit(sentence)
	hsh = {"one" => 1, "two" => 2, "three" => 3, "four" => 4,
		"five" => 5, "six" => 6, "seven" => 7, "eight" => 8, "nine" => 9}
	arr = sentence.split
	keys = hsh.keys
	arr1 = []
	arr.each do |elem|
		if keys.include?(elem)
			arr1 << hsh[elem]
		elsif !("a".."z").include?(elem[-1]) 
			if keys.include?(elem.chop)
				subs = elem.chars
				punct = subs.pop
				arr1 << hsh[elem.chop].to_s + punct
			else
				arr1 << elem
			end
		else
			arr1 << elem
		end
	end
	arr1.join(' ')
end



p word_to_digit('Please call me at five five five one two three four. Thanks.') 

#p word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'