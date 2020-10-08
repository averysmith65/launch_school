def word_sizes(string)
  string = string.gsub(/[^a-zA-Z']+/, ' ')
  string = string.gsub(/["'"]+/, '')
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


 word_sizes('Four score and seven.') 
 word_sizes('Hey diddle diddle, the cat and the fiddle!') 
 word_sizes("What's up doc?") 
word_sizes('') 

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}