arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]
#arr.each do |element|
#	arr.sort.odd?
#end
# sorted_arr = []
# arr.each do |element|
# 	sorted_arr << arr.sort
# 	element.select do |number|
# 		number.odd?
# 	end
# end
# print sorted_arr

arr.sort_by(&odd?)