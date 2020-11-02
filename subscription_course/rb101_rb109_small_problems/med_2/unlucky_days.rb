def friday_13th(int)
	year = Time.new(int)
	count = 0
	friday = []
	until count == 365
    year += (60 * 60 * 24)
    if year.friday? 
      friday << year.day
    end
    count += 1
  end
  friday.count(13)
end


p friday_13th(2015) 
# friday_13th(1986) 
# friday_13th(2019) 

p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2