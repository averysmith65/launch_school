def twice(int)
	arr = int.digits.reverse
  if arr.length.even?
  	suba1 = arr.shift(arr.length/2)
  	suba2 = arr.shift(arr.length)
  	if suba1 == suba2
  		arr = suba1 + suba2 
  	  arr.join('').to_i 
  	else
  		arr = suba1 + suba2 
  	  arr.join('').to_i * 2 
  	end
  else 
  	arr.join('').to_i * 2
  end
end

#p twice(37) 
# twice(44) 
#p twice(334433) 
# twice(444) 
# twice(107) 
# twice(103103) 
# twice(3333) 
# twice(7676) 
# twice(123_456_789_123_456_789) 
# twice(5) 

p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10