def swap(words)
	arr = words.split(' ').map do |string|
	  ch_first = string[0] 
	  ch_last = string[-1]
    string[0] = ch_last
    string[-1] = ch_first
    string
  end
  arr.join(' ')
end




 swap('Oh what a wonderful day it is') 
 swap('Abcde') 
 swap('a') 


p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'