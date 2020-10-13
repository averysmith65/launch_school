def multiply_all_pairs(arr1,arr2)
	total = []
  arr1.each do |item_1|
    arr2.each do |item_2|
      total << item_1 * item_2
    end
  end
  total.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) 

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]