        r0 = argument0//targetSize[i-1]
        r1 = argument1//targetSize[i]
        x0 = argument2//targetx[i-1]
        y0 = argument3//targety[i-1]
        x1 = argument4//targetx[i]
        y1 = argument5//targety[i]
        
        outlineDirection = point_direction(x0,y0,x1,y1)
        if 0 < outlineDirection  < 180
            pos = 1
        else
            pos = -1
        
    //d = ||P1 - P0||
    d = point_distance(x0,y0,x1,y1)
    
    //if points arent ontop of each other
    if d > 0
    {
        //d = a + b
        //a = (r02 - r12 + d2 ) / (2 d)
        a = (r0^2 - r1^2 + d^2)/ (2*d)
        // h2 = r02 - a2
        if (r0*r0 - a*a) > 0
            h = sqrt(r0*r0 - a*a)
        else
            h = sqrt(r1*r1 - a*a)
        //P2 = P0 + a ( P1 - P0 ) / d
        x2 = x1 + a * (x1 - x0) / d
        y2 = y1 + a * (y1 - y0) / d
        //x3 = x2 +- h ( y1 - y0 ) / d
        x3 = x2 + pos*h*(y1 - y0) / d
        //y3 = y2 -+ h ( x1 - x0 ) / d
        y3 = y2 + pos*h*(x1 - x0) / d
        return point_direction(x1,y1,x3,y3)
    }
    return 0
        
