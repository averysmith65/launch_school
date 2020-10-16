def leading_substrings(string)
	count = 0
	total = 0
	arr1 = []
	until count == string.size
    arr1 << string[0..count]
    count += 1
  end
  arr1
end

def substrings(string)
	str_arr = []
	str_arr << leading_substrings(string)
  until string.size == 0
	  str_arr << leading_substrings(string.delete!(string[0]))
  end
  str_arr.flatten
end



p substrings('abcde') 

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]