def crunch(string)
new_str = ''
  for i in Range.new(0,string.length-1)
  	if (string[i] == string[i + 1]) 
      new_str << string[i] if i == string.length-1
    else 
    	new_str << string[i]
    end
  end
  new_str
end






p crunch('ddaaiillyy ddoouubbllee') 
p crunch('4444abcabccba') 
p crunch('gggggggggggggg') 
p crunch('a') 
p crunch('') 

# crunch('ddaaiillyy ddoouubbllee') == 'daily double'
# crunch('4444abcabccba') == '4abcabcba'
# crunch('ggggggggggggggg') == 'g'
# crunch('a') == 'a'
# crunch('') == ''