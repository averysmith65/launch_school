def triangle(s1,s2,s3)
	return :invalid if s1 == 0 || s2 == 0 || s3 == 0
	return :equilateral if s1 == s2 && s1 == s3
  arr = [s1,s2,s3]
  arr.sort!
  greatest = arr.pop
  second = arr.pop
  lowest = arr.pop
  return :invalid if lowest + second < greatest
  case 
  when greatest > second && second > lowest
  	:scalene
  when greatest == second || greatest == lowest || second == lowest
  	:isosceles
  end

end






# p triangle(3, 3, 3) 
# p triangle(3, 3, 1.5) 
# p triangle(3, 4, 5) 
# # triangle(0, 3, 3)
# # triangle(3, 1, 1)  

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid

