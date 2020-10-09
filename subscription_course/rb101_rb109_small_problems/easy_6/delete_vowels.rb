def remove_vowels(arr)
  arr.each do |elem|
  	elem.delete! "aeiouAEIOU"
  end
  arr 
  
end






 remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) 
  remove_vowels(%w(green YELLOW black white)) 
  remove_vowels(%w(ABC AEIOU XYZ)) 

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']