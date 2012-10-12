//x
//argument0
//y
//argument1
i = y

while (collision_line(x,y,x,y+lengthdir_y(i+16,direction),wall_par,false,false) <> noone) and i >= 0
{     
    i -= 16
}

return i;
