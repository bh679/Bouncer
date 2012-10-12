    //tr_set_fade_color(c_black)
    //tr_set_transition(tr_fade_outin)
if instance_number(obj_new_level) = 1 and !keyboard_check(vk_enter)
{
    //regenerate
   global.generate = true
    with(obj_new_level)
    {
        if back != 0
            back -= 1
    }
    room_restart()
}
else
{
    room = room_next(room)  
    Levels.roomindex += 1  
    //room = room_goto(Levels.level[Levels.roomindex])
}
