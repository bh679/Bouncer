VertRows = argument0
Straight = argument1
i = 0
    repeat(VertRows)
    {
        VRow = floor(random(room_width/BLOCKSIZE))
        y = 0
        ROWBLOCK = ChangeROWBLOCK()
        repeat(room_height/BLOCKSIZE)
        {
            x = VRow
            obj_new_level.block[x,y] = ROWBLOCK 
            if ROWBLOCK = obj_sand
            {
                if y < 8
                    width = floor(10-y+random(2)-1)
                else if y > room_height/BLOCKSIZE-8
                    width = floor(8-(room_height/BLOCKSIZE-y) +random(2)-1)
                else
                    width = floor(random(2))
                    
                i = -round(width/2)
                repeat(width)
                {
                    obj_new_level.block[max(x+i,0),y] = obj_new_level.ROWBLOCK 
                    i += 1
                }
            }    
            y+= 1      
        }
        i += 1
    }  
