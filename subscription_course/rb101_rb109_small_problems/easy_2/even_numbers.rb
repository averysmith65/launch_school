num = (1..99).to_a

num.select do |integer|
  if integer.even?
	  puts integer
  end
end