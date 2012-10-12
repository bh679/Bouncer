fname = argument0
/*if file_exists(string(fname)+'.ini')
    show_message('file found')
else
    show_message(string(fname)+'.ini' + ' not found')*/
with(wall_par)
    {instance_destroy()}
with(obj_ball)
    {instance_destroy()}
ini_open(string(fname)+'.ini')
xx = 0
yy = 0
repeat(room_height/16)
{
    xx = 0
    repeat(room_width/16)
    {
        Block[xx,yy] = ini_read_real(string(xx),string(yy),0)
        if Block[xx,yy] != 0
            instance_create(xx*16,yy*16,Block[xx,yy])
        xx += 1
    }
    yy += 1
}
ini_close()
