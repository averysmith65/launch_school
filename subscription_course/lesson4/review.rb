#catch the number
#loop do
#  number = rand(1000)
#  puts number
#  break if number.between?(0,5)
#end

#Conditional loop
=begin loop do 
	process_the_loop = [true, false].sample
	if process_the_loop == true
		puts "the loop was processed"
		break
	else
		puts "the loop wasnt processed"
		break
	end
end=end

#get the sum
=begin loop do
  puts 'What does 2 + 2 equal?'
  answer = gets.chomp.to_i
  if answer == 4
  	puts "thats correct"
  	break
  else 
  	puts "that wrong try again."
  end
end=end

#insert numbers
=begin numbers = []

loop do
  puts 'Enter any number:'
  input = gets.chomp.to_i
  numbers << input
  break if numbers.size == 5
end
puts numbers
=end


#empty the array
=begin names = ['Sally', 'Joe', 'Lisa', 'Henry']
loop do 
	puts names.shift
	break if names.empty?
end
=end 

#stop counting
=begin 5.times do |index|
  puts index
  break if index == 2
end
=end

#only even
=begin number = 0

until number == 10
  number += 1
  if number % 2 == 1
    next
  else
    puts number
  end
end
=end

#first to five
=begin number_a = 0
number_b = 0

loop do
  number_a += rand(2)
  number_b += rand(2)
  next unless number_a == 5 || number_b == 5

  puts '5 was reached!'
  break
end
=end

#greeting
=begin def greeting
  puts 'Hello!'
end

number_of_greetings = 2

while number_of_greetings > 0
  greeting
  number_of_greetings -= 1
end
=end

