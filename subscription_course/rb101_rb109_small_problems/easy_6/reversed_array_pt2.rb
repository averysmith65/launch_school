def reverse(arr)
	new_arr = []
	count = -1
	arr.each do |elem|
    until new_arr.size == arr.size
  	  new_arr << arr[count]
  	  count -= 1
  	end
  end
  new_arr
end


# reverse([1,2,3,4])
# reverse( %w(a b e d c))
# reverse(['abc'])
# #reverse([])

p reverse([1,2,3,4]) == [4,3,2,1]          # => true
p reverse(%w(a b e d c)) == %w(c d e b a)  # => true
p reverse(['abc']) == ['abc']              # => true
p reverse([]) == []   