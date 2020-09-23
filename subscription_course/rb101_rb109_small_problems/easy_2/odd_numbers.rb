num = (1..99).to_a

num.select do |integer|
  if integer.odd?
	  puts integer
  end
end