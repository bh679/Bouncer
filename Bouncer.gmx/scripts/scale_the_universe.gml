index = room
height = room_height*WORLDSCALE
width = room_width*WORLDSCALE

while(room_exists(room_next(index)))
{
    index = room_next(index)
    room_set_height(index,height)
    room_set_width(index,width)
}
