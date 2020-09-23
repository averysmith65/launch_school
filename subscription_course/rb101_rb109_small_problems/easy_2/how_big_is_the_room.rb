puts "Enter the length of the room in meters:"
length = gets.chomp
puts "Enter the width of the room in meters:"
width = gets.chomp

sq_m = length.to_i * width.to_i

sq_f = sq_m * 10.7639

puts "The are of the room is #{sq_m} square meters (#{sq_f} square feet)."