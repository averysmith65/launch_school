def factors(number)
  divisor = number
  factors = []
  loop do
    factors << number / divisor if number % divisor == 0
    divisor -= 1
    break if divisor == 0
  end 
  factors
end

puts factors(-5)

#better way to do it because it addresses the input being zero and negative
#while divisor > 0 do
#  factors << number / divisor if number % divisor == 0
#  divisor -= 1
#end