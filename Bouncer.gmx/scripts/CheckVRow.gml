    i = 0
    repeat(obj_new_level.VertRows)
    {
        if obj_new_level.VRow[i] = obj_new_level.x// = floor(random(room_height/obj_new_level.BLOCKSIZE))
            return true
        i += 1
    }
    
    return false
