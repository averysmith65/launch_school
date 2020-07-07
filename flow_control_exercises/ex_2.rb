def phrase(word)
	if word.length > 10
		puts word.upcase
	else
		puts "word is not big enough"
	end
end

phrase("hello world")