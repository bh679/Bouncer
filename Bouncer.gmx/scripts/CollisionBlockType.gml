//wall propperites
//dirt
if DirtExists = true// and bounced = false
{
    if collision_wall(obj_dirt) = true
    {
        speed = max(speed - 0.05,0)
        if (speed > 0.5 or hspeed > 0 )
            BounceSound('dirt');
        bounced = true
if (speed > 0.5 or hspeed > 0 )
            BounceSound('rock');    }
}

//wood
if WoodExists = true and bounced = false
{
    if collision_wall(obj_wood) = true
    {
        if (speed > 0.5 or hspeed > 0 )
            BounceSound('wood');
        bounced = true
    }
}

//rock
if RockExists = true and bounced = false
{
    if collision_wall(obj_rock) = true or collision_wall(obj_wall) = true
    {
        if (speed > 0.5 or hspeed > 0 )
            BounceSound('rock');
        bounced = true
    }  
}

//sand
if SandExists = true and bounced = false
{
    if collision_wall(obj_sand) = true
    {
        speed = max(speed*4/5,0)
        if speed < 0.1 speed = 0
        if (speed > 0.5 or hspeed > 0 )
            BounceSound('sand');
        bounced = true
    }
}

//tramp
if TrampExists = true and bounced = false
{
    if collision_wall(obj_tramp) = true
    {
        sound_play(fx_worp)
        speed = min(speed*6/5,32)
        bounced = true
    }
}

//lava
//if collision_wall(obj_lava) = true
//{
//    BounceSound('lava');
//}

//creat
/*if collision_wall(obj_creat) = true
{
    BounceSound('wood');
    block_id = 0
    with(obj_creat)
    {
        old_id = obj_ball.block_id
        if old_id != 0
        {
            if point_distance(obj_ball.x,obj_ball.y,old_id.x,old_id.y) > point_distance(obj_ball.x,obj_ball.y,id.x,id.y)
                obj_ball.block_id = id
        }
        else
        {
            obj_ball.block_id = id
        }        
        with(obj_ball)
        {
            if collision_wall(block_id) = true
                with(block_id){alarm[0] = 1}
        }
    }
}

//glass
if collision_wall(obj_glass) = true
{
    BounceSound('rock');
    if speed > 2
    {
        with(obj_glass)
        {
            obj_ball.block_id = id
            with(obj_ball)
            {
                if collision_wall(block_id) = true
                    with(block_id){alarm[0] = 1}
            }
        }
    }
}
*/
