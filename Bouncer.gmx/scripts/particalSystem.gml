
blockshigh = ceil(room_height/16)
blockswide = ceil(room_width/16)

if !(global.platform = iOS or global.platform = HTML5)
{
    //partical system
    shaft = part_system_create()
    
    //particals
    i = 0
    repeat(4)
    {
        partical1[i] = part_type_create()
        partical2[i] = part_type_create()
        i += 1
    }
    
    i = 0
    repeat(4)
    {
        part_type_shape(partical1[i],pt_shape_flare)
        part_type_size(partical1[i],0.06,0.15,0,0)
        part_type_alpha2(partical1[i],1,0)
        part_type_life(partical1[i],15,30*6)
        part_type_speed(partical1[i],0.4,0.1,0,0)
        partical2[i] = partical1[i]
        part_type_color2(partical1[i],c_ltgreen,c_white)
        part_type_color2(partical2[i],c_ltblue,c_white)
        i += 1
    }
    part_type_direction(partical1[0],-10,10,0,45)
    part_type_direction(partical1[1],-10+90,10+90,0,45)
    part_type_direction(partical1[2],-10+180,10+180,0,45)
    part_type_direction(partical1[3],-10+270,10+270,0,45)
    
    
    numberOfParticalsAStep = -1*blockshigh
    
    //part_
    xx = 0
    yy = 0
    //left
    repeat(blockshigh)
    {
        if position_meeting(xx,yy,wall_par) != true
        {
            var Emmiter;
            Emmiter = part_emitter_create(shaft) 
            part_emitter_region(shaft,Emmiter,0,0,yy,yy+16,ps_shape_line,ps_distr_linear)
            part_emitter_stream(shaft,Emmiter,partical1[0],numberOfParticalsAStep)
            part_emitter_stream(shaft,Emmiter,partical2[0],numberOfParticalsAStep)
        }
        yy += BLOCKSIZE
    }
    xx = room_width
    yy = 0
    //right
    repeat(blockshigh)
    {
        if position_meeting(xx-BLOCKSIZE,yy,wall_par) != true
        {
            var Emmiter;
            Emmiter = part_emitter_create(shaft) 
            part_emitter_region(shaft,Emmiter,room_width,room_width,yy,yy+16,ps_shape_line,ps_distr_linear)
            part_emitter_stream(shaft,Emmiter,partical1[2],numberOfParticalsAStep)
            part_emitter_stream(shaft,Emmiter,partical2[2],numberOfParticalsAStep)
        }
        yy += BLOCKSIZE
    }
    xx = 0
    yy = 0
    //top
    repeat(blockswide)
    {
        if position_meeting(xx,yy,wall_par) != true
        {
            var Emmiter;
            Emmiter = part_emitter_create(shaft) 
            part_emitter_region(shaft,Emmiter,xx,xx+16,0,0,ps_shape_line,ps_distr_linear)
            part_emitter_stream(shaft,Emmiter,partical1[3],numberOfParticalsAStep)
            part_emitter_stream(shaft,Emmiter,partical2[3],numberOfParticalsAStep)
        }
        xx += BLOCKSIZE
    }
    xx = 0
    yy = room_height
    //bottom
    repeat(blockswide)
    {
        if position_meeting(xx,yy-BLOCKSIZE,wall_par) != true
        {
            var Emmiter;
            Emmiter = part_emitter_create(shaft) 
            part_emitter_region(shaft,Emmiter,xx,xx+16,room_height,room_height,ps_shape_line,ps_distr_linear)
            part_emitter_stream(shaft,Emmiter,partical1[1],numberOfParticalsAStep)
            part_emitter_stream(shaft,Emmiter,partical2[1],numberOfParticalsAStep)
        }
        xx += BLOCKSIZE
    }
}
else if instance_number(wall_par) != 0
{
    shaft = 0
    xx = 0
    yy = 0
    //left
    repeat(blockshigh)
    {
        if position_meeting(xx,yy,wall_par) != true
        {
            var objglow;
            objglow = instance_create(xx,yy,obj_glow)
            objglow.place = 'left'
        }
        yy += BLOCKSIZE
    }
    xx = room_width
    yy = 0
    //right
    repeat(blockshigh)
    {
        if position_meeting(xx-BLOCKSIZE,yy,wall_par) != true
        {
            var objglow;
            objglow = instance_create(xx,yy,obj_glow)
            objglow.place = 'right'
        }
        yy += BLOCKSIZE
    }
    xx = 0
    yy = 0
    //top
    repeat(blockswide)
    {
        if position_meeting(xx,yy,wall_par) != true
        {
            var objglow;
            objglow = instance_create(xx,yy,obj_glow)
            objglow.place = 'top'
        }
        xx += BLOCKSIZE
    }
    xx = 0
    yy = room_height
    //bottom
    repeat(blockswide)
    {
        if position_meeting(xx,yy-BLOCKSIZE,wall_par) != true
        {
            var objglow;
            objglow = instance_create(xx,yy,obj_glow)
            objglow.place = 'bottom'
        }
        xx += BLOCKSIZE
    } 
}
    /*
    //right
    rightEmmiter = part_emitter_create(shaft) 
    part_emitter_region(shaft,rightEmmiter,room_width,room_width,0,room_height,ps_shape_line,ps_distr_linear)
    part_emitter_stream(shaft,rightEmmiter,partical1[2],-3)
    part_emitter_stream(shaft,rightEmmiter,partical2[2],-3)
    //top
    upEmmiter = part_emitter_create(shaft) 
    part_emitter_region(shaft,upEmmiter,0,room_width,0,0,ps_shape_line,ps_distr_linear)
    part_emitter_stream(shaft,upEmmiter,partical1[3],-3)
    part_emitter_stream(shaft,upEmmiter,partical2[3],-3)
    //bottom
    downEmmiter = part_emitter_create(shaft) 
    part_emitter_region(shaft,downEmmiter,0,room_width,room_height,room_height,ps_shape_line,ps_distr_linear)
    part_emitter_stream(shaft,downEmmiter,partical1[1],-3)
    part_emitter_stream(shaft,downEmmiter,partical2[1],-3)
