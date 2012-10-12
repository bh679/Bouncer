//i = argument0

if obj_new_level.LANDSCAPETYPE = 1
    {
        if point_distance(obj_new_level.targetx[obj_new_level.TARGETNO],obj_new_level.targety[obj_new_level.TARGETNO],obj_new_level.x,obj_new_level.y) > max(obj_new_level.targetSize[obj_new_level.TARGETNO],3)
            return obj_new_level.WALLBLOCK
        else
            return -1
    }
    else if obj_new_level.LANDSCAPETYPE = 0
    {
        if (obj_new_level.i <= obj_new_level.ExitPos or obj_new_level.i > obj_new_level.ExitPos + obj_new_level.ExitSize)
            return obj_new_level.WALLBLOCK
        else
            return -1
    }
        
        
    return -1
    /*if block[x,y] = 0
        show_message('oh know, its 0')
        show_message('i:' + string(i) + 'Lnd:' + string(LANDSCAPETYPE) + 'ExitPos:' + string(ExitPos) + 'ExitSize:' + string(ExitSize))
