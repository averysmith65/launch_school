my_numbers = [1, 4, 3, 7, 2, 6]

def double_odd_numbers(numbers)
  doubled_numbers = []
  counter = 0

  loop do
    break if counter == numbers.size

    current_number = numbers.each_index {|x| x.odd?}
    current_number[counter] *= 2 
    doubled_numbers << current_number

    counter += 1
  end

  doubled_numbers
end

puts double_odd_numbers(my_numbers)