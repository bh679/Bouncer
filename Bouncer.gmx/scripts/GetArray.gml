
with(custom_par)
{
    obj_custom.Block[x/16,y/16] = object_index
}
xx = 0
yy = 0
repeat(room_height/16)
{
    xx = 0
    repeat(room_width/16)
    {
        
        /*SaveBlock(obj_dirt)
        SaveBlock(obj_rock)
        SaveBlock(obj_wood)
        SaveBlock(obj_sand)
        SaveBlock(obj_solid)
        SaveBlock(obj_tramp)
        SaveBlock(obj_creat)
        SaveBlock(obj_cog)
        SaveBlock(obj_cog_right)
        SaveBlock(obj_magnet_north)
        SaveBlock(obj_magnet_south)
        SaveBlock(obj_sheild)
        SaveBlock(obj_sheild_clear)*/
        //if Block[xx,yy] != -1
        //    show_message(string(Block[xx,yy]))
        if xx*16 = obj_custom.ResetX and yy*16 = obj_custom.ResetY
            Block[xx,yy] = obj_ball
        xx += 1
    }
    yy += 1
}
//if Block[xx,yy] != noone
//    show_message(string(Block[xx,yy]))
