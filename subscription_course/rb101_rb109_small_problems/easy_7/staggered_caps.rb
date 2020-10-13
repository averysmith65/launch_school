def staggered_case(string)
	count = 0
	arr = string.chars
	arr.map do |elem|
		case
		when count.even?
			elem.capitalize!
		when count.odd?
      elem.downcase!
    end
    count += 1
  end
  arr.join("")
end

p staggered_case('I Love Launch School!')
p staggered_case('ALL_CAPS') 
p staggered_case('ignore 77 the 444 numbers') 

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'