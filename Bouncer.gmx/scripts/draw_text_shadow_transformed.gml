/*
arg0 - x
arg1 - y
arg2 - string
arg3 - x
arg4 - y
arg5 - a
arg6 - colour1
arg7 - colour2
arg8 - distance
*/
colour1 = argument6
colour2 = argument7
distance = argument8

var shadow_dis;
{
    draw_set_color(colour2)
    shadow_dis = 0
    repeat(2)
    {
        draw_text_transformed(argument0 - shadow_dis,argument1 - shadow_dis,argument2,argument3,argument4,argument5)
        draw_set_color(colour1)
        shadow_dis = distance
    }
}

