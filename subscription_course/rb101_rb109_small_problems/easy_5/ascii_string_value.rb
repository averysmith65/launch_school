def ascii_value(string)
	ascii_num = 0
	string.each_char {|c| ascii_num += c.ord}
	ascii_num
end





#p ascii_value('Four score') 
# p ascii_value('Launch School') 
# p ascii_value('a') 
# p ascii_value('') 

p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0