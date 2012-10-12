levelname = argument0
y += ygap
if MouseInBox(x,y,x+width,y+15)
{
    draw_text_shadow(x+jump,y,string(levelname),c_white,c_black,1)
    if mouse_check_button_pressed(mb_left)
    {
        return true
    }
}
else
    draw_text_shadow(x,y,string(levelname),c_white,c_black,1)
    
    
return false
