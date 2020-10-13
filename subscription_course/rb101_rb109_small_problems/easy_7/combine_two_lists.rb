def interleave(arr1,arr2)
	arr3 = []
	odd = 0
	even = 0
	until odd == arr1.length
		arr3 << arr1[odd]
		arr3 << arr2[even]
		odd += 1
		even += 1
	end
	arr3
end



# p interleave([1, 2, 3], ['a', 'b', 'c']) 

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']