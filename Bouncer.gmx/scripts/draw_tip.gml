if global.platform = Windows or global.platform = Mac
{
    draw_set_font(fontTipSmall)
    draw_set_color(c_black)
    draw_set_alpha(0.8*tipalpha)
    draw_rectangle(room_width-linewidth - 32 - 16,16,room_width - 16,16+ceil(lines*1.2)*16,true)
    draw_set_alpha(0.3*tipalpha)
    draw_rectangle(room_width-linewidth - 32- 16,16,room_width - 16,16+ceil(lines*1.2)*16,false)
    draw_set_alpha(1*tipalpha)
    draw_set_color(c_white)
    draw_text_shadow(room_width-linewidth - 16 - 16,16,curr_tip,c_white,c_black,1)
    
    if MouseInBox(room_width-linewidth - 32- 16,16,room_width - 16,16+ceil(lines*1.2)*16)
    {
        tipalpha = min(tipalpha+0.1,1)
        alarm[1] = 30*1   
    }
    draw_set_alpha(1)    
}
else if global.platform = iOS
{
    draw_set_font(fontTipBig)
    scale = 2
    draw_set_color(c_black)
    draw_set_alpha(0.8)
    draw_rectangle(room_width-linewidth*scale - 32*scale - 16,16,room_width - 16,16+ceil(lines*1.2*scale)*16,true)
    draw_set_alpha(0.3)
    draw_rectangle(room_width-linewidth*scale - 32*scale- 16,16,room_width - 16,16+ceil(lines*1.2*scale)*16,false)
    draw_set_alpha(1)
    draw_set_color(c_white)
    draw_text_shadow(room_width-linewidth*scale  - 16*scale - 16,16,curr_tip,c_white,c_black,1)
    
    draw_set_alpha(1)    
}
