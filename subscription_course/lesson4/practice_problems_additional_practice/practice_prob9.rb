words = "the flintstones rock"

arr_words = words.split

cap_words = []

arr_words.each do |word|
  cap_words << word.capitalize
end

print cap_words.join(" ")