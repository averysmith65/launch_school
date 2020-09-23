puts "what is the bill?"
bill = gets.chomp.to_i 
puts "what is the tip percentage?"
percentage = gets.chomp.to_i

tip = bill * (percentage * 0.01)
total = bill + tip

puts "the tip is #{tip}"
puts "the total is #{total}"