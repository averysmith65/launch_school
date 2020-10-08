def after_midnight(string)
	arr = string.split(':')
	hour = arr[0].to_i * 60 
	minute = arr[1].to_i
	time = hour + minute
	if time == 1440
    time = 0
  end
  time
end

def before_midnight(string)
	arr = string.split(':')
  hour = arr[0].to_i * 60 
  minute = arr[1].to_i
  time = hour - minute
  if time == 1440
    time = 0
  end
  time
end



# p after_midnight('00:00') 
# p before_midnight('00:00') 
# p after_midnight('12:34') 
# p before_midnight('12:34') 
# p after_midnight('24:00') 
# p before_midnight('24:00') 

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0