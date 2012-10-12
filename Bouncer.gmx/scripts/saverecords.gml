ini_open('records.ini')
    if global.besttime > global.time or global.besttime = -1
        ini_write_real(string(Levels.roomindex),'time',global.time)
    if global.bestscore < global._score or global.bestscore = -1
        ini_write_real(string(Levels.roomindex),'score',global._score)
    //show_message("Score: " + string(global._score) + "  old best score: " +string(global.bestscore))  //debuggin
    if global.bestbounces > global.bounces or global.bestbounces = -1
        ini_write_real(string(Levels.roomindex),'bounces',global.bounces)
    if global.bestdis > global.dis or global.bestdis = -1
        ini_write_real(string(Levels.roomindex),'distance',global.dis)
    ini_write_real(string(Levels.roomindex),'bestposx',global.bestx)
    ini_write_real(string(Levels.roomindex),'bestposy',global.besty)
    ini_write_real(string(Levels.roomindex),'trys',global.trys)
    ini_write_real(string(Levels.roomindex),'completes',global.completes)
ini_close()
