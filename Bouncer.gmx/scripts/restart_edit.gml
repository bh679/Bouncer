with(obj_ball)
  {clicked = 0
  speed = 0
  hspeed = 0
  vspeed = 0
  obj_burnt = false
  sprite_index = spr_ball
  if instance_number(obj_start_point) <> 0
    {y = obj_start_point.y
    x = obj_start_point.x}
   else
    {y = 32
    x = 32} 
    }
    
instance_create(x,y,obj_no_move)    
    
  with(obj_creat_dead)
    {instance_create(x,y,obj_creat)
    instance_destroy()}

  with(obj_tnt_dead)
    {instance_create(x,y,obj_tnt)
    instance_destroy()}
    
  with(obj_fire_box_dead)
    {instance_create(x,y,obj_fire_box)
    instance_destroy()}

  with(obj_wall_dead)
    {instance_create(x,y,obj_wall)
    instance_destroy()}   
    
    
  with(obj_glass_dead)
    {instance_create(x,y,obj_glass)
    instance_destroy()}  
    
  with(obj_wall_fake_dead)
    {instance_create(x,y,obj_wall_fake)
    instance_destroy()}  
    
  with(obj_wooden_fake_dead)
    {instance_create(x,y,obj_wooden_fake)
    instance_destroy()}  
    
  with(obj_slow_fake_dead)
    {instance_create(x,y,obj_slow_fake)
    instance_destroy()}  
    
  with(obj_slow_dead)
    {instance_create(x,y,obj_slow)
    instance_destroy()}   
    
  with(obj_magnet_dead)
    {instance_create(x,y,obj_magnetic)
    instance_destroy()} 
    
  with(obj_magnet2_dead)
    {instance_create(x,y,obj_magnet2)
    instance_destroy()}     

  with(obj_ice_dead)
    {instance_create(x,y,obj_ice)
    instance_destroy()}     
    
  with(obj_ballwall_dead)
    {instance_create(x,y,obj_ballwall)
    instance_destroy()} 
    
  with(obj_invisible_dead)
    {instance_create(x,y,obj_invisible)
    instance_destroy()} 
     
  with(obj_fire)
    {instance_destroy()}  
               

