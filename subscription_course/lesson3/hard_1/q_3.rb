
#A

#nothing happens to variables one,two,three because inside the mess_with_vars
#is reasignment so the original varibales are not changed.
#def mess_with_vars(one, two, three)
#  one = two
#  two = three
#  three = one
#end

#one = "one"
#two = "two"
#three = "three"

#mess_with_vars(one, two, three)

#puts "one is: #{one}"
#puts "two is: #{two}"
#puts "three is: #{three}"

#B

#same thing
#def mess_with_vars(one, two, three)
#  one = "two"
#  two = "three"
#  three = "one"
#end

#one = "one"
#two = "two"
#three = "three"

#mess_with_vars(one, two, three)

#puts "one is: #{one}"
#puts "two is: #{two}"
#puts "three is: #{three}"

#C
#the variables one,two,three will be changed because .gsub! is destructive 
#def mess_with_vars(one, two, three)
#  one.gsub!("one","two")
#  two.gsub!("two","three")
#  three.gsub!("three","one")
#end

#one = "one"
#two = "two"
#three = "three"

#mess_with_vars(one, two, three)

#puts "one is: #{one}"
#puts "two is: #{two}"
#puts "three is: #{three}"


