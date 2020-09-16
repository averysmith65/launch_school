ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, 
	"Marilyn" => 22, "Spot" => 237 }

amount = 0

ages.each { |_,age| amount += age }
puts amount