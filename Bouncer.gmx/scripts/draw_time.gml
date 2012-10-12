/*time = argument2

secs = time mod 60
if secs < 10
    secs = '0' + string(secs)
mins = floor(time/60)

draw_text_shadow(argument0,argument1,"Time: "+string(mins) + " : " + string(secs) ,c_white,c_black,1)
