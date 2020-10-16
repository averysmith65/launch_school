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
  results = []
  (0...string.size).each do |start_index|
    this_substring = string[start_index..-1]
    results.concat(leading_substrings(this_substring))
  end
  results
end

def palindrome?(string)
  string == string.chars.reverse.join('')
end

def palindromes(string)
  substrings(string).select do |elem|
  	palindrome?(elem) && elem.size > 1
  end
end

p palindromes('abcd') 
p palindromes('madam') 
p palindromes('hello-madam-did-madam-goodbye') 
p palindromes('knitting cassettes') 

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
# p palindromes('hello-madam-did-madam-goodbye') == [
#    'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
#    'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
#    '-madam-', 'madam', 'ada', 'oo'
#  ]
# p palindromes('knitting cassettes') == [
#    'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt' ]