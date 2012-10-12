//called in obj_ball roomstart event
////////////////
//Trial mode
////////////////
//check if level in Levels record
if global.trial = true and RoomIsLevel()
{
    if (room != Levels.level[Levels.roomindex])
    {
        Levels.roomindex -= 1
        nextroom()
    }
}
//check if new level
Found = false
i = 0 
no_tutorial = instance_number(tutorial)
while(i < global.total_levels)
{
    
    temproom = Levels.roomid[i]
    if temproom = room
    {
        Found = true
        i = global.total_levels
    }
    i+=1;   
}

//reset level global variables
reset_var()

global.IsLevel = RoomIsLevel() 
if global.load = true
{
    LoadCustom(GetLevelName())
}
else if global.IsLevel
{
    if Levels.unlocked[Levels.roomindex] = false
    {
        ini_open("levels.ini")
        ini_write_real("unlocked",string(Levels.roomindex),Levels.level[Levels.roomindex])
        ini_close()
        
        Levels.unlocked[Levels.roomindex] = true
    }
    loadrecords()
}


//ios room transition
obj_iOSTransition.image_alpha = 1

//write new level
//if Found = false and global.IsLevel = true// and global.IsLevel
//    new_level();

//set stage name
switch(Levels.stage[max(0,min(4,Levels.roomindex))])
{
    case 0: obj_ctrl.stagename = 'Sun high'
        break;
    case 1: obj_ctrl.stagename = 'Sundown'
        break;
    case 2: obj_ctrl.stagename = 'Sunset'
        break;
        
}

global.stage = Levels.stage[max(0,min(4,Levels.roomindex))]

if global.previous_room != room
{
    new_tip()
    bg_music()
    global.bestx = -100
    global.besty = -100
    global.lastx = -100
    global.lasty = -100   
}

particalSystem();
