def rotate_array(arr)
	arr[1..-1] + [arr[0]]
end






# rotate_array([7, 3, 5, 2, 9, 1]) 
# rotate_array(['a', 'b', 'c']) 
# rotate_array(['a']) 

# x = [1, 2, 3, 4]
# rotate_array(x) 
   

p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x == [1, 2, 3, 4]    