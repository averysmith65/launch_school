puts "what is your age?"
age = gets.chomp.to_i
puts "at what age would you like to retire?"
retire = gets.chomp.to_i

current_year = Time.now.year
retire_year = (retire - age) + current_year
years_left = retire_year - current_year

puts "its #{current_year}. you will retire in #{retire_year}"
puts "you have only #{years_left} years of work to go!"