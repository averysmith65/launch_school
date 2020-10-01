def multisum(number)
  arry = Range.new(1, number).to_a
  arry.select! do |num|
    num % 3 == 0 || num % 5 == 0
  end
  arry.inject(0){|sum,x| sum + x }
end




p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168


# puts "enter a number greater than 1"
# number = gets.chomp.to_i
# arry = Range.new(1, number).to_a
# arry.select! do |num|
#   num % 3 == 0 || num % 5 == 0
# end