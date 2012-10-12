   NoClumps = argument0//random(5)
   Direction = argument2// left right top bottom all
   BLOCKTYPE = argument1
        i = 0
        repeat(NoClumps)
        {
            target = floor(random(obj_new_level.TARGETNO))
            if Direction = 'left'
                Clumpx = obj_new_level.targetx[target]-1
            else if Direction = 'right'
                Clumpx = obj_new_level.targetx[target]+1
            else
                Clumpx = obj_new_level.targetx[target]
            
            if Direction = 'top'
                Clumpy = obj_new_level.targety[target]-1
            else if Direction = 'bottom'
                Clumpy = obj_new_level.targety[target]+1
            else
                Clumpy = obj_new_level.targety[target]
            
            if Direction = 'all'
                ClumpSize = obj_new_level.targetSize[target]+1
            else
                ClumpSize = obj_new_level.targetSize[target]
            y = 0
            repeat(room_height/BLOCKSIZE)
            {
                x = 0
                repeat(room_width/BLOCKSIZE)
                {
                    if point_distance(x,y,Clumpx,Clumpy) <= ClumpSize
                        obj_new_level.block[x,y] = BLOCKTYPE
                    x += 1
                }
                y += 1
            }
        }
