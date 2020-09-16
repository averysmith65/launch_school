ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

deleted_age = ages.delete_if {|key,value| value > 100}

p deleted_age