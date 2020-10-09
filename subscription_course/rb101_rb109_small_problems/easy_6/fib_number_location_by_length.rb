def find_fibonacci_index_by_length(int)
  n1 = 1
  n2 = 1
  fib_n = 0
  fib_arr = []
  while fib_n.digits.size < int
    fib_n = n1 + n2
    n1 = n2 
    n2 = fib_n
    fib_arr << fib_n
  end
  fib_arr.size + 2
end



p find_fibonacci_index_by_length(2)           # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3)          # 1 1 2 3 5 8 13 21 34 55 89 144
# p find_fibonacci_index_by_length(10) 
# p find_fibonacci_index_by_length(100) 
# p find_fibonacci_index_by_length(1000) 
# p find_fibonacci_index_by_length(10000) 

 p find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
 p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
 p find_fibonacci_index_by_length(10) == 45
 p find_fibonacci_index_by_length(100) == 476
 p find_fibonacci_index_by_length(1000) == 4782
 p find_fibonacci_index_by_length(10000) == 47847