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




p leading_substrings('abc') 
leading_substrings('a') 
leading_substrings('xyzzy') 

p leading_substrings('abc') == ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']