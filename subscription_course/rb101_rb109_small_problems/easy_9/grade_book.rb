def get_grade(int1,int2,int3)
  total = (int1 + int2 + int3)/3
  case 
  when total >= 90
  	'A'
  when total >= 80 && total < 90
  	'B'
  when total >= 70 && total < 80
  	'C'
  when total >= 60 && total < 70 
  	'D'
  else 
  	'F'
  end
end



p get_grade(95, 90, 93) 
p get_grade(50, 50, 95) 

# get_grade(95, 90, 93) == "A"
# get_grade(50, 50, 95) == "D"