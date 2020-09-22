arr = ['10', '11', '9', '7', '8']
counter = 0
sort_arr = []

loop do 
  sort_arr << arr[counter].to_i
  counter += 1
  break if counter == arr.size
end
print sort_arr.sort.reverse!

#how launch school solved the problem

#arr.sort do |a,b|
#  b.to_i <=> a.to_i
#end