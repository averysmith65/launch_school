def lower_half(n)
	n = n - 2
  count = n
  star = "*"
  until count == 1
  	p (star * count).center(9) 
  	count -= 2
  end
  "*".center(9)
end

def diamond(n)
  count = 1 
  star = '*'
	until count == n + 2
		p (star * count).center(9)
		count += 2
	end
	lower_half(n)
end


p diamond(9)