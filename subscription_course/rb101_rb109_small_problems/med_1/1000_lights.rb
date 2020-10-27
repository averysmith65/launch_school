def lights(n)
	arr = (1..n).to_a
  hsh = arr.to_h { |x| [x,false] }
  count = 1
  until count == arr.length + 1
	  hsh.each do |k,v|
	  	hsh[k] = !v if k % count == 0
	  end
	  count += 1
	end
  arr1 = []
  hsh.select! {|k,v| v == true}
  hsh.keys
end
p lights(1000)

