/*
arg0 - x
arg1 - y
arg2 - string
arg3 - colour1
arg4 - colour2
arg5 - distance
*/
var shadow_dis;
{
    draw_set_color(argument4)
    shadow_dis = 0
    repeat(2)
    {
        draw_text(argument0 - shadow_dis,argument1 - shadow_dis,argument2)
        draw_set_color(argument3)
        shadow_dis = argument5
    }
}

