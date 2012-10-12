if global.soundOn = false
   exit

var last_music;
last_music = global.backmusic

switch(global.stage)
{
    case 0: global.backmusic = snd_stage1_peace
        break;
    case 1: global.backmusic = snd_stage2_jungle
        break;
    case 2: global.backmusic = snd_stage2_jungle
        break;
    case 3: global.backmusic = snd_stage4_lastjungle
        break;
    case 4: global.backmusic = snd_stage4_lastjungle
        break;
    case 5: global.backmusic = snd_stage5_mill
        break;
    case 6: global.backmusic = snd_stage9_magnetic
        break;
    case 7: global.backmusic = snd_stage9_magnetic
        break;
    case 8: global.backmusic = snd_stage9_magnetic
        break;
    default: global.backmusic = snd_stage1_peace
}
if global.backmusic != last_music
{
    sound_stop(global.backmusic)
    sound_loop(global.backmusic)
}
