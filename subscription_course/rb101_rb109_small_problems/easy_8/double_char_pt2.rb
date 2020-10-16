def double_consonants(string)
	a = string.chars
  a1 = a.map do |char|
  	if char.match?(/[b-zB-Z&&[^eiou123456789]]/)
  		char += char 
  	else 
  		char
  	end
  end
  a1.join('')
end


p double_consonants('String') 
p double_consonants("Hello-World!") 
p double_consonants("July 4th") 
p double_consonants('') 

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""