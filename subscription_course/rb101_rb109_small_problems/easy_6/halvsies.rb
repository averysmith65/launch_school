def halvsies(arr)
	arr1 = []
	arr2 = []
  case 
  when arr.size % 2 == 0
  	arr1 << arr.shift(arr.size/2)
  	arr2 << arr.shift(arr.size)
  when arr.size % 2 == 1
  	arr1 << arr.shift(arr.size/2 + 1)
  	arr2 << arr.shift(arr.size)
  else
    return [[],[]]
  end
  arr1 + arr2
end



p halvsies([1, 2, 3, 4]) 
p halvsies([1, 5, 2, 4, 3]) 
p halvsies([5]) 
p halvsies([]) 

# halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
# halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
# halvsies([5]) == [[5], []]
# halvsies([]) == [[], []]