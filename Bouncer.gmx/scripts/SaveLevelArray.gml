ini_open(string(argument0)+'.ini')
xx = 0
yy = 0
repeat(room_height/16)
{
    xx = 0
    repeat(room_width/16)
    {
        //if Block[xx,yy] != -1
        //    show_message(string(Block[xx,yy]))
        if Block[xx,yy] != -1
            ini_write_string(string(xx),string(yy),string(Block[xx,yy]))
        xx += 1
    }
    yy += 1
}

ini_close()
