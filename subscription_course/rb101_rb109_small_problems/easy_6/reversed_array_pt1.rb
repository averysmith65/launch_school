

def reverse!(arr)
  for i in Range.new(0,arr.size/2 - 1)
  	arr[i], arr[-i-1] = arr[-i-1], arr[i]
  end
  p arr
end


reverse!([1,2,3,4])
reverse!( %w(a b e d c))
reverse!(['abc'])
reverse!([])