def prompt(message)
	puts "==> #{message}"
end

prompt("enter the first number")
num1 = gets.chomp.to_i

prompt("enter the second number")
num2 = gets.chomp.to_i

prompt("#{num1} + #{num2} = #{num1 + num2}") 

prompt("#{num1} - #{num2} = #{num1 - num2}")

prompt("#{num1} * #{num2} = #{num1 * num2}")

prompt("#{num1} / #{num2} = #{num1 / num2}")

prompt("#{num1} % #{num2} = #{num1 % num2}")

prompt("#{num1} ** #{num2} = #{num1 ** num2}") 