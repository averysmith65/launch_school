def block_word?(str)
  count = 0
  str = str.upcase! if str == str.downcase
  collection = [["B","O"], ["X","K"], ["D","Q"], ["C","P"], ["N","A"], 
  ["G","T"], ["R","E"], ["F","S"], ["J","W"], ["H","U"], ["V","I"],
  ["L","Y"], ["Z","M"]]
  collection2 = collection.clone
  until count == str.size
    collection.each do |elem|
      if elem.include?(str[count])
        collection.delete(elem)
      end
    end
    count += 1
    new_collect = collection.size
  end
  if new_collect == (collection2.size - str.size)
  	true
  else
  	false
  end
end
  


# p block_word?('BATCH') 
p block_word?('BUTCH') 
p block_word?('jest') 

p block_word?('BATCH') == true
 p block_word?('BUTCH') == false
 p block_word?('jest') == true