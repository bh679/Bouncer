ini_open('levels.ini')

//total levels
ini_write_real('levels','total',global.total_level )

//write records
i = 0
repeat(global.total_level)
{
    ini_write_real(string(i),'stage',Levels.stage[i])
    ini_write_real(string(i),'id',Levels.roomid[i])
    ini_write_real(string(i),'level',Levels.level[i])
    ini_write_string(string(i),'name',Levels.name[i])
    ini_write_real(string(i),'stagepos',Levels.roomstageindex[i])
    i+= 1
}

ini_close()
