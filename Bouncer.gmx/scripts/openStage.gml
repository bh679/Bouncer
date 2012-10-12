//Stage1
tmpStage = argument0
if tmpStage = 1
{
    Levels.roomindex = 17
    with(obj_new_level)
        {instance_destroy()}
    room_goto(stage_select1)
}
else if tmpStage = 2
{
    Levels.roomindex = 31
    with(obj_new_level)
        {instance_destroy()}
    room_goto(stage_select2)
}
else if tmpStage = 3
{
    Levels.roomindex = 40
    with(obj_new_level)
        {instance_destroy()}
    room_goto(stage_select3)
}  
else if tmpStage = 4
{
    Levels.roomindex = 50
    with(obj_new_level)
        {instance_destroy()}
    room_goto(stage_select4)
}
else if tmpStage = 5
{
    Levels.roomindex = 59
    with(obj_new_level)
        {instance_destroy()}
    room_goto(stage_select5)
}
else if tmpStage = 6
{
    Levels.roomindex = 59
    with(obj_new_level)
        {instance_destroy()}
    room_goto(stage_select6)
}
else if tmpStage = 7
{
    Levels.roomindex = 59
    with(obj_new_level)
        {instance_destroy()}
    room_goto(stage_select7)
}
else if tmpStage = 8
{
    Levels.roomindex = 59
    with(obj_new_level)
        {instance_destroy()}
    room_goto(stage_select8)
}
else if tmpStage = 9
{
    Levels.roomindex = 59
    with(obj_new_level)
        {instance_destroy()}
    room_goto(stage_select9)
}

