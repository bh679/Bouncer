HorzRows = argument0
i = 0
    repeat(HorzRows)
    {
        HRow[i] = floor(random(room_height/BLOCKSIZE))
        x = 0
        ROWBLOCK = ChangeROWBLOCK()
        repeat(room_width/BLOCKSIZE)
        {
            y = HRow
            obj_new_level.block[x,y] = ROWBLOCK   
            x+= 1      
        }
        i += 1
    }
