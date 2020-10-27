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


p fibonacci(20) == 6765
p fibonacci(100) == 354224848179261915075
p fibonacci(100_001)