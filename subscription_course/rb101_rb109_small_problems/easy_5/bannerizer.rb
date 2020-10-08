def print_in_box(string)
  space = " " * (string.length + 2)
  plus = "+"
  dash = "-" * (string.length + 2)
  box = plus + dash + plus + "\n" "|" + space + "|" + "\n" "| " + string + " |" + "\n" + "|" + space + "|" + "\n" + plus + dash + plus 
end




puts print_in_box('To boldly go where no one has gone before.')
puts print_in_box('')