if global.platform = HTML5
   exit

if global.soundOn = false
   exit
   
if curr_voice != noone
    sound_stop(curr_voice)
    

    
if argument1 = 0
{
    if argument0 = 'ah'
    {
        switch(floor(random(4)))
        {
            case 0: curr_voice = (bh_ah1)
                break
            case 1: curr_voice = (bh_ah2)
                break
            case 2: curr_voice = (bh_ooh1)
                break
            case 3: curr_voice = (bh_ooh2)
                break
        }
    }
    else if argument0 = 'oach'
    {
        switch(floor(random(2)))
    {
            case 0: curr_voice = (bh_oach1)
                break
            case 1: curr_voice = (bh_oach2)
                break
        }
    }
    else if argument0 = 'wee'
    {
        curr_voice = (bh_wee1)
        obj_ball.wee = true
        obj_ball.alarm[3] = 30*1.5   
    }
    else if argument0 = 'finish'
    {
        switch(floor(random(2)))
        {
            case 0: curr_voice = (bh_finish1)
                break
            case 1: curr_voice = (bh_finish2)
                break
        }
    }
}
else if argument1 = 1
{
    if argument0 = 'ah'
    {
        switch(floor(random(6)))
        {
            case 0: 
            if floor(random(3)) = 1
            {
                curr_voice = (mm_ah1)
                break
            }
            case 1: curr_voice = (mm_ah3)
                break
            case 2: curr_voice = (mm_ooh1)
                break
            case 3: curr_voice = (mm_ooh2)
                break
            case 4: curr_voice = (mm_ah2)
                break
            case 5: curr_voice = (mm_ooh3)
                break
        }
    }
    else if argument0 = 'oach'
    {
        switch(floor(random(3)))
        {
            case 0: curr_voice = (mm_oach1)
                break
            case 1: curr_voice = (mm_oach2)
                break
            case 1: curr_voice = (mm_oach3)
                break
        }
    }
    else if argument0 = 'wee'
    {
        switch(floor(random(2)))
        {
            case 0: curr_voice = (mm_wee1)
                break
            case 1: curr_voice = (mm_wee2)
                break
        }
        obj_ball.wee = true
        obj_ball.alarm[3] = 30*1.5   
    }
    else if argument0 = 'finish'
    {
        switch(floor(random(6)))
        {
            case 0: curr_voice = (mm_finish1)
                break
            case 1: curr_voice = (mm_finish2)
                break
            case 2: curr_voice = (mm_finish3)
                break
            case 3: curr_voice = (mm_finish4)
                break
            case 4: curr_voice = (mm_finish5)
                break
            case 5: curr_voice = (mm_finish6)
                break
        }
    }
}
else if argument1 = 2
{
    if argument0 = 'ah'
    {
        switch(floor(random(3)))
        {
            case 0: curr_voice = (ah_ah1)
                break
            case 1: curr_voice = (ah_ah2)
                break
            case 2: curr_voice = (ah_ooh1)
                break
            case 3: curr_voice = (ah_ooh2)
                break
        }
    }
    else if argument0 = 'oach'
    {
        switch(floor(random(1)))
        {
            case 0: curr_voice = (ah_oach1)
                break
        }
    }
    else if argument0 = 'wee'
    {
        switch(floor(random(3)))
        {
            case 0: curr_voice = (ah_wee1)
                break
            case 1: curr_voice = (ah_wee2)
                break
            case 2: curr_voice = (ah_wee3)
                break
        }
        obj_ball.wee = true
        obj_ball.alarm[3] = 30*1.5   
    }
    else if argument0 = 'finish'
    {
        switch(floor(random(3)))
        {
            case 0: curr_voice = (ah_finish1)
                break
            case 1: curr_voice = (ah_finish2)
                break
            case 2: curr_voice = (ah_finish3)
                break
        }
    }
}
else if argument1 = 3
{
    if argument0 = 'ah'
    {
        //switch(floor(random(1)))
        //{
            //case 0: curr_voice = (at_ah1)
               // break
            //case 1: curr_voice = (at_ah2)
               // break
                curr_voice = (at_ah2)
        //}
    }
    else if argument0 = 'oach'
    {
        switch(floor(random(2)))
        {
            case 0: curr_voice = (at_oach1)
                break
            case 1: curr_voice = (at_oach2)
                break
        }
    }
    else if argument0 = 'wee'
    {
        switch(floor(random(3)))
        {
            case 0: curr_voice = (at_wee1)
                break
            case 1: curr_voice = (at_wee2)
                break
            case 2: curr_voice = (at_wee3)
                break
        }
        obj_ball.wee = true
        obj_ball.alarm[3] = 30*1.5   
    }
    else if argument0 = 'finish'
    {
        switch(floor(random(3)))
        {
            case 0: curr_voice = (mm_finish1)
                break
            case 1: curr_voice = (mm_finish2)
                break
            case 2: curr_voice = (mm_finish3)
                break
        }
    }
}
if curr_voice != noone
{
    sound_play(curr_voice)
    sound_volume(curr_voice,voice_volume)
}
