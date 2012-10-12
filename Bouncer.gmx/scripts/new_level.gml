//Update record
Levels.stage[global.total_levels] = global.stage
Levels.level[global.total_levels] = global.total_levels
Levels.roomid[global.total_levels] = room
Levels.name[global.total_levels] = global.name

//first level must always be unlocked
/*if global.total_levels = 0 //or global.total_levels = 1
{    
    
    Levels.stage[global.total_levels] = 0
    Levels.level[global.total_levels] = global.total_levels
    Levels.roomid[global.total_levels] = tut_1
    Levels.name[global.total_levels] = "First level"
}*/

if Levels.stage[global.total_levels] != Levels.stage[max(global.total_levels-1,0)]
{
    Levels.LevelsInStage[Levels.stage[global.total_levels]] = 1
    Levels.roomstageindex[global.total_levels] = 1
}
else
{
    if Levels.level[global.total_levels] != Levels.level[0]
        Levels.roomstageindex[global.total_levels] = Levels.roomstageindex[global.total_levels-1]+1
     Levels.LevelsInStage[Levels.stage[global.total_levels]] = 
        max(Levels.LevelsInStage[Levels.stage[global.total_levels]]
        ,Levels.roomstageindex[global.total_levels] - 1)
}

global.total_levels += 1
//write to file
if global.save = true
{
    ini_open('levels.ini')
        ini_write_real('levels','total',global.total_levels)
        ini_write_real(string(global.total_levels),'stage',Levels.stage[global.total_levels])
        ini_write_real(string(global.total_levels),'level',Levels.level[global.total_levels])
        ini_write_real(string(global.total_levels),'id',Levels.roomid[global.total_levels])
        ini_write_string(string(global.total_levels),'name',string(global.name)) 
        ini_write_real(string(global.total_levels),'stagepos',Levels.roomstageindex[global.total_levels])
    ini_close()
}
