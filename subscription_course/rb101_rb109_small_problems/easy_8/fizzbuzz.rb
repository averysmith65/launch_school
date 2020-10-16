def fizzbuzz(num1,num2)
  arr = (num1..num2).to_a
  arr.map do |x|
  	case 
  	when x % 3 == 0 && x % 5 == 0
    	"FizzBuzz"
  	when x % 3 == 0
  		"Fizz" 
  	when x % 5 == 0
  		"Buzz"
    else
    	x
    end
  end
end







p fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz