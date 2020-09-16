statement = "The Flintstones Rock"

letters = statement.chars

frequencies = Hash.new(0)

letters.each do |letter|
	frequencies[letter] +=1
end 

print frequencies