hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], 
	third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}


arry = []
vowels = []

hsh.each_value do |details|
  arry << details
end

arry.flatten! 

split_arr = []

arry.map do |word|
	split_arr << word.chars
end
split_arr.flatten!

split_arr.each do |letter|
  if letter == "a" || letter == "e" || letter == "i" || letter == "o" || letter == "u"
    puts letter
  end
end