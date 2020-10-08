def time_of_day(int)
	int = int % 1440 if int > 1440 || int < -1440
	
	hour = int / 60 
  hour = hour % 24 if hour < 0
	minute = int % 60

	hour_val = hour.to_s
	minute_val = minute.to_s
	
	hour_val = "0" + hour_val if hour >= 0 && hour <=9
	minute_val = "0" + minute_val if minute >= 0 && minute <=9
	
	hour_val + ":" + minute_val
	
end




# p time_of_day(0) 
# p time_of_day(-3) 
# p time_of_day(35) 
# p time_of_day(-1437) 
# p time_of_day(3000) 
# p time_of_day(800) 
# p time_of_day(-4231) 



p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"
