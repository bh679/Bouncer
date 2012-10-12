/*
arg0 x
arg1 y
arg2 length
arg3 height
*/
clicked = false
if MouseInBox(argument0-(argument3-10)/2,argument1-(argument3-10)/2,argument0+argument2,argument1+argument3)
{
    draw_set_alpha(0.4)
    if mouse_check_button_released(mb_left)
        clicked = true
}
else
    draw_set_alpha(0.1)

draw_set_color(c_black)
draw_rectangle(argument0-(argument3-10)/2,argument1-(argument3-10)/2,argument0+argument2,argument1+argument3,false)
draw_set_color(c_white)
draw_rectangle(argument0-(argument3-10)/2,argument1-(argument3-10)/2,argument0+argument2,argument1+argument3,true)
draw_set_alpha(1)


return clicked;
