i = 0
flag = false
repeat(obj_new_level.TARGETNO+1)
{
    if obj_new_level.targety[i] < (room_height/BLOCKSIZE)/3
        return false
    if obj_new_level.targetSize[i] > 7
        flag = true
    i+= 1
}

if obj_new_level.targetx[obj_new_level.TARGETNO] > room_width/BLOCKSIZE or obj_new_level.targety[obj_new_level.TARGETNO] > room_height/BLOCKSIZE
    return flag
