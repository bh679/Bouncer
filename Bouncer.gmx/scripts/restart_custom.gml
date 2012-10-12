with(obj_sheild)
{
    solid = true
    object_get_parent(obj_solid)
}

with(obj_sheild_clear)
{
    solid = false
    object_get_parent(wall_par)
}

with(obj_creat_dead)
{
    instance_create(x,y,obj_creat)
    instance_destroy()
}

reset_ball()

