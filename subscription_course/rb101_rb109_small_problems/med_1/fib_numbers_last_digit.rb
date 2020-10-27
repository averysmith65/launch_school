def fibonacci(n)
	n1 = 1
  n2 = 1
  fib_n = 0
  fib_arr = [1,1]
  count = 2
  until count == n
    fib_n = n1 + n2
    n1 = n2 
    n2 = fib_n
    fib_arr << fib_n
    count += 1
  end
  fib_arr.pop
end

def fibonacci_last(n)
  fibonacci(n).digits.reverse.pop
end

p fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
p fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
p fibonacci_last(100)
p fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
p fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
p fibonacci_last(123456789) # -> 4