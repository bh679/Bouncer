
    //draw restart help
    if (obj_ball.speed < 0.5 and obj_ball.collisionTimer > 30*3)and obj_ball.shot = true
    {
        draw_set_font(TutFontHuge)
        draw_set_halign(fa_middle)
        helpfade = (sin(obj_ball.continuousCounter/22)/15+14/15)
        draw_set_alpha(helpfade)
        draw_text_shadow(room_width/2, room_height/2, "Touch!", c_white,c_black,1)
        draw_set_font(TutFontSmall)
        draw_text_shadow(room_width/2+32, room_height/2+64, "to restart.", c_white,c_black,1)
        draw_set_alpha(1)
        draw_set_font(Tahoma_R_14)
        draw_set_halign(fa_left)
        fade = max(0.4,fade-0.005)
    }
    else 
    {
        helpfade = 1
        if fade < 1
             fade = min(fade+0.05,1)
    }   
    draw_set_alpha(fade*helpfade)

    if room = tut_1
    {
      draw_set_font(TutFontHuge)
      draw_text_shadow(10,20,'Hey Look, a little Ball.',c_white,c_black,1)
      draw_set_font(TutFontSmall)
      draw_text_shadow(100,room_height*3/5,'Tap the direction to send it off the screen!',c_white,c_black,1)
    }
      
    else if room = tut_2
    {
      draw_set_font(TutFontBig)
      draw_text_shadow(room_width/8,room_height/4,'Touching futher away# sends it further',c_white,c_black,1)
      draw_set_font(TutFontSmall) 
      draw_text_shadow(room_width/2+32,room_height*3/4,'The Balls must#move on.',c_white,c_black,1)
    }
      
    else if room = tut_3
    {
      draw_set_font(TutFontBig)
      draw_text_shadow(room_width/3,room_height*3/4,'Freedom is#but a screen away...',c_white,c_black,1)
      draw_set_font(TutFontBig) 
      draw_text_shadow(100,room_height/6,'A close touch',c_white,c_black,1)
      draw_set_font(TutFontSmall) 
      draw_text_shadow(150,room_height/4+48,'Gives a less powerful jump',c_white,c_black,1)
    }   
    draw_set_alpha(1)
