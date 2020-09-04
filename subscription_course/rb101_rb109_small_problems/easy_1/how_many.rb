vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

def count_occurrences(array)
  counts = Hash.new 0 
  array.each do |word|
    counts[word] += 1
  end
  puts counts
end

count_occurrences(vehicles)
