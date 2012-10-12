if collision_line(x+lengthdir_x(8,direction+90),y+lengthdir_y(8,direction+90),x+lengthdir_x(8,direction+90)+lengthdir_x(speed,direction),y+lengthdir_y(8,direction+90)+lengthdir_y(speed,direction),argument0,false,false) <> noone
or collision_line(x+lengthdir_x(8,direction-90),y+lengthdir_y(8,direction-90),x+lengthdir_x(8,direction-90)+lengthdir_x(speed,direction),y+lengthdir_y(8,direction-90)+lengthdir_y(speed,direction),argument0,false,false) <> noone
or collision_line(x,y,x+lengthdir_x(speed+16,direction),y+lengthdir_y(speed+16,direction),argument0,false,false) <> noone
{
return true
}
else
{
return false
}
