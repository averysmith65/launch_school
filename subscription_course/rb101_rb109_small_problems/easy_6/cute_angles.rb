DEGREE = "\xC2\xB0"
MINUTE = "'"
SECOND = '"'

def dms(int)
  degree = int.floor
  minute = (int - degree) * 60
  min_floor = minute.floor
  second = (minute - min_floor) * 60
  second_floor = second.floor
  

  
  "#{degree}" + DEGREE + "#{min_floor}".rjust(2, '0') + MINUTE + "#{second_floor}".rjust(2, '0') + SECOND 
end






  p dms(30) 
#  p dms(76.73) 
# p dms(254.6) 
#  p dms(93.034773) 
#  p dms(0) 
#  p dms(360) || dms(360) 

p dms(30) == %(30°00'00")
p dms(76.73) == %(76°43'48")
p dms(254.6) == %(254°36'00")
p dms(93.034773) == %(93°02'05")
p dms(0) == %(0°00'00")
p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")