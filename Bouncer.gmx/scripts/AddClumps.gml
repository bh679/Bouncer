   NoClumps = argument0//random(5)
   BLOCKTYPE = argument1
   Min = argument2
   Max = argument3
   
        i = 0
        repeat(NoClumps)
        {
            Clumpx = floor(random(room_width/BLOCKSIZE))
            Clumpy = floor(random(room_height/BLOCKSIZE))
            ClumpSize = floor(random(Max-Min)+Min)
            y = 0
            repeat(room_height/BLOCKSIZE)
            {
                x = 0
                repeat(room_width/BLOCKSIZE)
                {
                    if point_distance(x,y,Clumpx,Clumpy) <= ClumpSize + floor(random(2))-1
                        obj_new_level.block[x,y] = BLOCKTYPE
                    x += 1
                }
                y += 1
            }
        }
