//with
if shot = true
  {
    ran = random(100)
    image_speed = random(speed)/5
    if (abs(vspeed) < 5 and ran < 80) or ran < 30
    {
        sprite_index2 = spr_ball_board
        image_angle2 += random(90)-45//random(360)
        spin_speed = hspeed*3/4
    }
    else if ran < 40
    {
        sprite_index2 = spr_ball
        image_angle2 += random(90)-45
        spin_speed = random(speed)*5
    }
    else if ran < 60
    {
        sprite_index2 = spr_ball_spin
        image_angle2 += random(90)-45
        spin_speed = random(speed)*5
    }
    else if ran < 80
    {
        sprite_index2 = spr_ball_spin2
        image_angle2 += random(90)-45
        spin_speed = random(speed)*5
    }
  }
  else
    image_index += 1
