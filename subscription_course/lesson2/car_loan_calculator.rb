def prompt(message)
  Kernel.puts("=> #{message}")
end
loop do 
	prompt("Welcome to the Car Loan Calculator!")

	prompt("Enter loan amount")

	loan_amount = ''
	loop do 
	  loan_amount = gets.chomp
	  if loan_amount.empty? || loan_amount.to_f < 0
	    prompt("Must enter positive number.")
	  else
	    break
	  end
	end

	prompt("Enter an interest rate")

	interest_rate = ''
	loop do
	  interest_rate = gets.chomp
	  if interest_rate.empty? || interest_rate.to_f < 0
	  	prompt("Must enter a positive number")
	  else
	  	break
	  end
	end


	prompt("Enter the loan duration (in years)?")

	loan_duration = ''
	loop do 
		loan_duration = gets.chomp

		if loan_duration.empty? || loan_duration.to_i < 0
			prompt("Enter a valid number")
		else
			break
		end
	end

	annual_interest_rate = interest_rate.to_f() / 100
	monthly_interest_rate = annual_interest_rate / 12
	loan_duration_months = loan_duration.to_i + 12

	monthly_payment = loan_amount.to_f() *
	                  (monthly_interest_rate /
	                  (1 - (1 + monthly_interest_rate)**(-loan_duration_months)))
	
	prompt("Your monthly payment is: $#{format('%.2f', monthly_payment)}")

	prompt("Another calculation?")
	answer = Kernel.gets.chomp

	break unless answer.downcase.start_with?('y')
end

prompt("Thank you for using Car Loan Calculator!")

prompt("See Ya!")