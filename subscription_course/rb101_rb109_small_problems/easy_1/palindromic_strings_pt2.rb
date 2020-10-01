def real_palindrome?(string)
  new_str = string.downcase.chars
  new_str.keep_if {|v| v =~ /[abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ123456789]/}
  string = new_str.join('')
  palindrome = new_str.reverse.join('')
  string == palindrome
end





p real_palindrome?('madam') == true
p real_palindrome?('Madam') == true           # (case does not matter)
p real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
p real_palindrome?('356653') == true
p real_palindrome?('356a653') == true
p real_palindrome?('123ab321') == false