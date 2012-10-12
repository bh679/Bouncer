//number of voices is a constant
voice_volume = 1
voice =  floor(random(VOICES))
curr_voice = noone    
instance_create(x,y,obj_ballcollision)
skipping = false
pos_index = 0
TAILSIZE = 15
MAXPOS = 120*30/3//seconds * 30/3
shot = false
obj_power = 0
//block = instance_nearest(x,y,wall_par)
old_direction = direction
old_vspeed = vspeed
old_hspeed = hspeed
bounce_sound = true
hotair = false
sprite_index = spr_ball_waiting
image_speed = 0
spins = 4
spin_speed =0
burning = false
image_angle2 = image_angle
sprite_index2 = sprite_index
wee = false
speak = false

WoodExists = false
DirtExists = false
SandExists = false
RockExists = false
BlockExists = false
TrampExists = false
bounced = false
i = 0
repeat(MAXPOS)
{
    path_x[i] = x
    path_y[i] = y
    i = 0 
}
polse = 0

x = obj_custom.ResetX
y = obj_custom.ResetY
speed = 0
