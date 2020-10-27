def minilang(n)
	sentence = n.split
	stack = []
	register = 0
	sentence.each do |elem|
		case elem
		when "PUSH"
			stack.push(register)
		when "ADD"
			register = stack.pop + register 
		when "SUB"
			register = register - stack.pop
		when "MULT"
			register = register * stack.pop
		when "DIV"
			register = register / stack.pop
		when "MOD"
			register = register % stack.pop 
		when "POP"
			register = stack.pop
		when "PRINT"
			p register
		else 
			register = elem.to_i
		end
	end
	register
end
minilang('PRINT')
minilang('5 PUSH 3 MULT PRINT')
minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# 5
# 3
# 8

minilang('5 PUSH POP PRINT')
# 5

minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# 5
# 10
# 4
# 7

minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# 6

minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# 12

minilang('-3 PUSH 5 SUB PRINT')
# 8

minilang('6 PUSH')