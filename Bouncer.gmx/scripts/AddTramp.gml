   NoRows = argument0//random(5)
   //Vert = argument2// 0/1
   BLOCKTYPE = argument1
   arraymax = obj_new_level.TARGETNO
      //Size = argument2
        i = 0
        repeat(NoRows)
        {
            //size = random(10)+4
            target = max(floor(random(obj_new_level.TARGETNO-1)),2)
            Previoustarget[i] = target
            c = 0
            used = false
            while(c < i)
            {
                if target = Previoustarget[c]
                {
                    c = i
                    used = true
                }
                c+= 1
            }
            //startx = obj_new_level.targetx[target] + floor(random(obj_new_level.targetSize[target]))*2/3
            //starty = obj_new_level.targety[target] + floor(random(obj_new_level.targetSize[target]))*2/3
            
            ToTargetDir = point_direction(obj_new_level.targetx[target-1],obj_new_level.targety[target-1],obj_new_level.targetx[target],obj_new_level.targety[target])
            FromTargetDir = point_direction(obj_new_level.targetx[target],obj_new_level.targety[target],obj_new_level.targetx[min(arraymax,target+1)],obj_new_level.targety[min(arraymax,target+1)])
            //Dir = point_direction(obj_new_level.targetx[target],obj_new_level.targety[target],startx,starty)
            if (ToTargetDir < 180+20 or ToTargetDir > 360-20 )and (FromTargetDir < 180-45 and FromTargetDir > 45) and obj_new_level.targetSize[target] > 7 and used = false
            {
                starty = floor(obj_new_level.targetSize[target]/2 + random(obj_new_level.targetSize[target]/2-1))
                size = floor(sqrt(abs(obj_new_level.targetSize[target]^2 - starty^2)))*2
                starty += obj_new_level.targety[target]
                startx = obj_new_level.targetx[target] - size
                DisToEdge = min(obj_new_level.targety[target],obj_new_level.targetx[target],room_width/BLOCKSIZE-obj_new_level.targetx[target],room_height/BLOCKSIZE-obj_new_level.targety[target])
                i = 0
                repeat(min(size,DisToEdge))
                {
                    obj_new_level.block[min(max(0,startx) + i,room_width),starty] = BLOCKTYPE
                    i += 1   
                }
            }
            
            
        }         
