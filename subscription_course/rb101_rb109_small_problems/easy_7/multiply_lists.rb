def multiply_list(arr1,arr2)
	total_arr = []
	count = 0
	until total_arr.size == arr1.size
	  total_arr << arr1[count] * arr2[count]
    count += 1
  end
  total_arr
end


p multiply_list([3, 5, 7], [9, 10, 11])

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]