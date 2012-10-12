ini_open('levels.ini')
//total levels
global.total_level = ini_read_real('levels','total',0)

//read record
i = 0
repeat(global.total_level)
{
    Levels.stage[i] = ini_read_real(string(i),'stage',0)
    Levels.roomid[i] = ini_read_real(string(i),'id',0)
    Levels.level[i] = ini_read_real(string(i),'level',0)
    Levels.name[i] = ini_read_string(string(i),'name','Error reading name')
    Levels.roomstageindex[i] = ini_read_real(string(i),'stagepos',Levels.roomstageindex[max(i-1,0)]+1)
    
    //keep roomstageindex in limits
    if Levels.stage[i] != obj_ctrl.stage[max(i-1,0)]
    {
        Levels.LevelsInStage[stage[i]] = 1
        Levels.roomstageindex[i] = 1
    }
    else
        Levels.LevelsInStage[stage[i]] += 1
    
    i+= 1
}

ini_close()
