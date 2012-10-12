   NoClumps = argument0//random(5)
   minangle = argument2// left right top bottom all
   maxangle = argument3
   BLOCKTYPE = argument1
        i = 0
     
            target = argument4
            Clumpx = obj_new_level.targetx[target]
            Clumpy = obj_new_level.targety[target]
            ClumpSize = obj_new_level.targetSize[target]+NoClumps
            y = 0
            repeat(room_height/BLOCKSIZE)
            {
                x = 0
                repeat(room_width/BLOCKSIZE)
                {
                    var ptdis;
                    ptdis = point_distance(obj_new_level.targetx[target],obj_new_level.targety[target],x,y)
                    if point_distance(x,y,Clumpx,Clumpy) <= ClumpSize and (minangle < ptdis and ptdis < maxangle)
                        obj_new_level.block[x,y] = BLOCKTYPE
                    x += 1
                }
                y += 1
            }
