# arr = [1,2,3,4,5]
# p arr.map do |x|
# 	x + 2
# end

# p arr.map { |x| x + 2}

# arr = ["hello", "world", "flat"]
# arr1 = arr.map do |word|
# 	word[-1]
# end

# p arr1

def joinor(arr, delimiter=', ', word='or')
  case arr.size
  when 0 then ''
  when 1 then arr.first
  when 2 then arr.join(" #{word} ")
  else
    arr[-1] = "#{word} #{arr.last}"
    arr.join(delimiter)
  end
end

p joinor([1, 2])                   # => "1 or 2"
p joinor([1, 2, 3])                # => "1, 2, or 3"
p joinor([1, 2, 3], '; ')          # => "1; 2; or 3"
p joinor([1, 2, 3], ', ', 'and')