arry = []

puts "enter the 1st number"
arry << first = gets.chomp.to_i

puts "enter the 2nd number"
arry << second = gets.chomp.to_i

puts "enter the 3rd number"
arry << third = gets.chomp.to_i

puts "enter the 4th number"
arry << fourth = gets.chomp.to_i

puts "enter the 5th number"
arry << fith = gets.chomp.to_i

puts "enter the last number"
last = gets.chomp.to_i

if arry.include?(last)
	print "the number #{last} appears in #{arry}" 
else
	print "the number #{last} does not appear in #{arry}" 
end