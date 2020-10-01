puts "please type in a word or many words"
words = gets.chomp

compact_words = words.gsub(/\s+/, "")

puts "there are #{compact_words.length} characters in #{words}"