//with
with(argument0)
{

    ran = random(100)
    image_speed = random(speed)/5
    if (abs(vspeed) < 5 and ran < 80) or ran < 30
    {
        sprite_index2 = spr_ball_board
        argument0.image_angle2 += random(90)-45//random(360)
        spin_speed = hspeed*3/4
    }
    else if ran < 40
    {
        sprite_index2 = spr_ball
        argument0.image_angle2 += random(90)-45
        spin_speed = random(speed)*5
    }
    else if ran < 60
    {
        sprite_index2 = spr_ball_spin
        argument0.image_angle2 += random(90)-45
        spin_speed = random(speed)*5
    }
    else if ran < 80
    {
        sprite_index2 = spr_ball_spin2
        argument0.image_angle2 += random(90)-45
        spin_speed = random(speed)*5
    }
  
    }
