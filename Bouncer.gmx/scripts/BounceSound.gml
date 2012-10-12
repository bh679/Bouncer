if global.platform = HTML5
   exit
   
if obj_ball.shot = false
   exit

if argument0 = 'dirt'
{        
        switch(floor(random(2)))
        {
            case 0: sound_play(fx_gravel1) break;
            case 1: sound_play(fx_gravel2) break;
        }
}
else if argument0 = 'wood'
{        
        switch(floor(random(2)))
        {
            case 0: sound_play(fx_wood1) break;
            case 1: sound_play(fx_wood2) break;
            case 2: sound_play(fx_wood3) break;
            case 3: sound_play(fx_wood4) break;
        }
}
else if argument0 = 'solid'
{        
            sound_play(fx_bounce)
}
else if argument0 = 'sand'
{        
        switch(floor(random(2)))
        {
            case 0: sound_play(fx_sand1) break;
            case 1: sound_play(fx_sand2) break;
        }
}
else if argument0 = 'rock'
{        
        switch(floor(random(2)))
        {
            case 0: sound_play(fx_stone1) break;
            case 1: sound_play(fx_stone2) break
            case 2: sound_play(fx_stone3) break
            case 3: sound_play(fx_stone4) break
        }
}
else if argument0 = 'glass'
{        
        switch(floor(random(2)))
        {
            case 0: sound_play(fx_shatter1) break;
            case 1: sound_play(fx_shatter2) break;
            case 2: sound_play(fx_shatter3) break;
        }
}
else if argument0 = 'lava'
{        
        switch(floor(random(2)))
        {
            case 0: sound_play(fx_lava1) break;
            case 1: sound_play(fx_lava2) break;
        }
}
else if argument0 = 'tramp'
{        
        switch(floor(random(2)))
        {
            case 0: sound_play(fx_boing1) break;
            case 1: sound_play(fx_boing2) break;
        }
}
else if argument0 = 'metal'
{        
        switch(floor(random(2)))
        {
            case 0: sound_play(fx_metal1) break;
            case 1: sound_play(fx_metal2) break;
        }
}
