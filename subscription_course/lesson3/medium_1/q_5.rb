limit = 15

def fib(first_num, second_num)
  while first_num + second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1)
puts "result is #{result}"

#the fib def does not have access to the limit variable because it is outside
#of its scope i would move the limit=15 inside the method def and before 
# the while loop