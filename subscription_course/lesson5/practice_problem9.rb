arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]
sorted_arr = []
arr.each do |ary|
	sorted_arr << ary.sort.reverse!
end
print sorted_arr