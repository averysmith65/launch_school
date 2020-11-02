def sum_square_difference(int)
  arr = (1..int).to_a
  arr_clone = arr.clone
  arr_sqr = arr_clone.map {|x| x ** 2}
  (arr.sum ** 2) - arr_sqr.sum
end





#p sum_square_difference(3) 
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
# sum_square_difference(10) 
# sum_square_difference(1) 
# sum_square_difference(100) 

p sum_square_difference(3) == 22
#    # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150