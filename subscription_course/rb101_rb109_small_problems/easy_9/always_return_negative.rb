def negative(int)
	int.positive? ? int * -1 : int
end





# p negative(5) 
# p negative(-3) 
# p negative(0)  

p negative(5) == -5
p negative(-3) == -3
p negative(0) == 0 
#	int * -1 if int.positive