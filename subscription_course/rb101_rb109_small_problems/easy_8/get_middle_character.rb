def center_of(string)
  if string.length % 2 ==0 
    string[(string.size/2) - 1] + string[string.size/2]
  else
  	string[string.size/2]
  end
end

# p center_of('I love ruby')
# p center_of('Launch School') 
# p center_of('Launch')
# p center_of('Launchschool') 
# p center_of('x') 

p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'