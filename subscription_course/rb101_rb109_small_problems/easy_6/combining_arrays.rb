def merge(arr1, arr2)
	combined_arr = arr1 + arr2
	combined_arr.uniq
end


p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]