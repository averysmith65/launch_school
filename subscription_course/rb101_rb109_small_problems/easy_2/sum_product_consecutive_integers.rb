puts "please enter an integer greater than 0:"
num = gets.chomp.to_i
puts "enter 's' to compute the sum, 'p' to computer the product."
answer = gets.chomp


def compute_sum(num)
	sum = 0
  begin 
  	sum += num
  	num -= 1
  end while num != 0
  return sum
end

def compute_product(num)
	product = 1
  begin 
  	product *= num
  	num -= 1
  end while num != 0
  return product
end

if answer == 's'
	add = compute_sum(num)
  puts "The sum of the integers between 1 and #{num} is #{add}."
elsif answer == 'p'
	product = compute_product(num)
  puts "The product of the integers between 1 and #{num} is #{product}."
else 
	puts "wrong choice"
end
