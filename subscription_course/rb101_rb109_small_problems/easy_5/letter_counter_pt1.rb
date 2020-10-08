def word_sizes(string)
  split_words = string.split
  hash_count = Hash.new
  count = 0
  split_words.each do |word|
  	count = word.length
  	if hash_count.include?(count)  
      hash_count[count] += 1
    else
      hash_count[count]=1 
  	end
  end
  hash_count
end








p word_sizes('Four score and seven.') 
# p word_sizes('Hey diddle diddle, the cat and the fiddle!') 
# p word_sizes("What's up doc?") 
# p word_sizes('') 

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}