tmpMenuItem = argument0

//////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////            MAIN MENU
/////////////////////////////////////////////////////////////////////////////////////

//play
if tmpMenuItem = STRPLAY
{
    Levels.roomindex = 1
    with(obj_new_level)
        {instance_destroy()}
    room = Levels.level[1]
} else

//options menu
if tmpMenuItem = STROPTIONS
{
    obj_menu.menuItem[0] = STRVIDEO
    obj_menu.menuItem[1] = STRAUDIO
    obj_menu.menuItem[2] = STRPLATFORM
    obj_menu.menuItem[3] = STRUPDATE
    obj_menu.menuItem[4] = STRDEBUGGIN
    obj_menu.menuItem[5] = STRMENU
} else

//options menu
if tmpMenuItem = STRSTAGES
{
    obj_menu.menu = "stages"
    obj_menu.menuItem[0] = STRSTAGE + " 1"
    obj_menu.menuItem[1] = STRSTAGE + " 2"
    obj_menu.menuItem[2] = STRSTAGE + " 3"
    obj_menu.menuItem[3] = STRSTAGE + " 4"
    obj_menu.menuItem[4] = STRSTAGE + " 5"
    obj_menu.menuItem[5] = STRMENU
} else

//exit game
if tmpMenuItem = STREXIT
{
    game_end();
} else



//////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////            OPTIONS MENU
/////////////////////////////////////////////////////////////////////////////////////

//back to main menu
if tmpMenuItem = STRMENU
{
    obj_menu.menu = "main"
    obj_menu.menuItem[0] = ''
    obj_menu.menuItem[1] = STRPLAY
    obj_menu.menuItem[2] = STRSTAGES
    obj_menu.menuItem[3] = STROPTIONS
    obj_menu.menuItem[4] = STREXIT
    obj_menu.menuItem[5] = ''
} else

//auido menu
if tmpMenuItem = STRAUDIO
{
    obj_menu.menuItem[0] = ''
    obj_menu.menuItem[1] = STRMUTE
    obj_menu.menuItem[2] = STRVOICES
    obj_menu.menuItem[3] = STRMENU
    obj_menu.menuItem[4] = ''
    obj_menu.menuItem[5] = ''
} else

//video menu
if tmpMenuItem = STRVIDEO
{
    obj_menu.menuItem[0] = ''
    obj_menu.menuItem[1] = STRGRAPHICS
    obj_menu.menuItem[2] = STRFULLSCREEN
    obj_menu.menuItem[3] = STRPLATFORM
    obj_menu.menuItem[4] = STRMENU
    obj_menu.menuItem[5] = ''
} else

//platform
if tmpMenuItem = STRPLATFORM
{
    obj_menu.menuItem[0] = ''
    obj_menu.menuItem[1] = Windows
    obj_menu.menuItem[2] = Mac
    obj_menu.menuItem[3] = iOS
    obj_menu.menuItem[4] = STRMENU
    obj_menu.menuItem[5] = ''
} else

//update
if tmpMenuItem = STRUPDATE
{
    url_open("http://bouncer.brennanhatton.com")
} else

//update
if tmpMenuItem = STRDEBUGGIN
{
    if global.debuggin = true
       global.debuggin = false
    else
        global.debuggin = true
} else



//////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////            VIDEO MENU
/////////////////////////////////////////////////////////////////////////////////////

//set graphics details
if tmpMenuItem = STRGRAPHICS
{
    changeGraphics()
} else

//fullscreen
if tmpMenuItem = STRFULLSCREEN
{
    window_set_fullscreen((window_get_fullscreen()+1) mod 2)
} else



//////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////            PLATFORM MENU
/////////////////////////////////////////////////////////////////////////////////////

//iOS
if tmpMenuItem = iOS
{
    global.platform = iOS
} else

//Windwos
if tmpMenuItem = Windows
{
    global.platform = Windows
} else

//Mac
if tmpMenuItem = Mac
{
    global.platform = Mac
} else



//////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////            AUDIO MENU
/////////////////////////////////////////////////////////////////////////////////////

//sound
if tmpMenuItem = STRMUTE
{

    if global.soundOn = true
    {
        global.soundOn = false
        sound_stop(global.backmusic);
        sound_stop_all();
        sound_global_volume(0)
    }
    else
    {
        global.soundOn = true
        bg_music()
        sound_global_volume(1)
    }
} else

//voices
if tmpMenuItem = STRVOICES
{
    if global.voices = true
        global.voices = false
    else
        global.voices = true
} else



//////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////            STAGES MENU
/////////////////////////////////////////////////////////////////////////////////////

i = 1
repeat(9)
{
    if tmpMenuItem = STRSTAGE + " " + string(i)
    {
        openStage(i);
    }
    i += 1
}


