
global.release = false
global.detail = 0
setPlatform()
set_tips()
set_game_value()
scale_the_universe()
global.soundOn = true
global.doubleclicktime = 10
global.level = 0
global.total_levels = 0
global.stage = 0
global.name = 'unnamed'
global.IsLevel = false
global.save = false
global.generate = true
global.testmode = false
global.previous_room = room
global.voices = true
global.backmusic = snd_stage1_peace
sound_loop(global.backmusic)
global.custom = false
global.cogangle = 0
global.load = false
global.debuggin = false
global.buttonclicked = false

if global.platform = html5
    window_set_fullscreen(true)

if !directory_exists(working_directory+"\Levels")
            directory_create(working_directory+"\Levels")

