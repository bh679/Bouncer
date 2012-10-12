
        ROWBLOCK = obj_dirt
        switch(floor(random(15)))
        {
            case 1: ROWBLOCK = obj_sand
            break;
            case 5: ROWBLOCK = obj_tramp
            break;
            case 2: ROWBLOCK = obj_wood
            case 3: ROWBLOCK = obj_wood
            case 4: ROWBLOCK = obj_wood
            break;
            default: ROWBLOCK = obj_dirt
        }
        
        return ROWBLOCK
