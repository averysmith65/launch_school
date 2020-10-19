def buy_fruit(arr)
  long_list = []

  arr.each do |item|
    fruit, quantity = item[0], item[1]
    quantity.times { long_list << fruit }
  end

  long_list
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) 

# buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
#   ["apples", "apples", "apples", "orange", "bananas","bananas"]