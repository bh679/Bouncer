    i = 0
    repeat(obj_new_level.HorzRows)
    {
        if obj_new_level.HRow[i] = obj_new_level.y// = floor(random(room_height/obj_new_level.BLOCKSIZE))
            return true
        i += 1
    }
    
    return false
