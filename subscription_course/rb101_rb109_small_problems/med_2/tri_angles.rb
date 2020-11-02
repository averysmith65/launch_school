def triangle(a1,a2,a3)
	return :invalid if a1 + a2 + a3 != 180
	return :invalid if a1 == 0 || a2 == 0 || a3 == 0
	return :right if a1 == 90 || a2 == 90 || a3 == 90
	return :acute if a1 < 90 && a2 < 90 && a3 < 90
	return :obtuse if a1 > 90 || a2 > 90 || a3 > 90
end





# triangle(60, 70, 50) 
# triangle(30, 90, 60) 
# triangle(120, 50, 10)
# triangle(0, 90, 90) 
# triangle(50, 50, 50) 

p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid