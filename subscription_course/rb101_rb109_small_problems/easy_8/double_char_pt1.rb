def repeater(string)
  a = string.chars
  a1 = a.map do |char|
  	char += char
  end
  a1.join('')
end



p repeater('Hello') 
p repeater("Good job!") 
p repeater('') 

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''