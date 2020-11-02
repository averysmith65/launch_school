def bubble_sort!(array)
	swap = true
	while swap == true
		swap = false
		for i in Range.new(0,array.length - 2)
	    if (array[i] > array[i + 1])
	    	array[i], array[i + 1] = array[i + 1], array[i]
	    	swap = true
	    end
	  end
	end
	array
end


array = [5, 3]
p bubble_sort!(array)
array == [3, 5]

array = [6, 2, 7, 1, 4]
p bubble_sort!(array)
array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
p bubble_sort!(array)
array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)

