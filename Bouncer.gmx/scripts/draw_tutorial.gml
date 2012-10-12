if global.roomend = false
{
    if global.platform = Windows
       draw_tutorial_windows()
    if global.platform = html5
       draw_tutorial_html5()
    else if global.platform = Mac
       draw_tutorial_mac()
    else if global.platform = iOS
       draw_tutorial_iOS()
}
else
{

    if global.platform = Windows or global.platform = Mac or global.platform = html5
    {
        draw_set_font(TutFontBig)
        draw_set_halign(fa_middle)
        draw_set_valign(fa_middle)
        helpfade = (sin(obj_ball.continuousCounter/22)/15+14/15)
        draw_set_alpha(helpfade)
        draw_text_shadow(room_width/2, room_height/2, "Click to continue!", c_white,c_black,1)
        draw_set_font(TutFontSmall)
        draw_text_shadow(room_width/2-32, room_height/2+32, "or press Space!", c_white,c_black,1)
        draw_set_alpha(1)
        draw_set_font(Tahoma_R_14)
        draw_set_halign(fa_left)
        draw_set_valign(fa_top)
        fade = max(0.4,fade-0.005)
    }else
    {
        draw_set_font(TutFontBig)
        draw_set_halign(fa_middle)
        draw_set_valign(fa_middle)
        helpfade = (sin(obj_ball.continuousCounter/22)/15+14/15)
        draw_set_alpha(helpfade)
        draw_text_shadow(room_width/2, room_height/2, "You got it off the screen!", c_white,c_black,1)
        draw_set_font(TutFontSmall)
        draw_text_shadow(room_width/2, room_height/2+48, "Touch to continue.", c_white,c_black,1)
        draw_set_alpha(1)
        draw_set_font(Tahoma_R_14)
        draw_set_halign(fa_left)
        draw_set_valign(fa_top)
        fade = max(0.4,fade-0.005)
    }
}
