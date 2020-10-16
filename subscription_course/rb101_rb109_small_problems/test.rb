# arr = [1,2,3,4,5]
# p arr.map do |x|
# 	x + 2
# end

# p arr.map { |x| x + 2}

arr = ["hello", "world", "flat"]
arr1 = arr.map do |word|
	word[-1]
end

p arr1