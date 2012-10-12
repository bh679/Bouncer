var object, sprite, imageindex;
object = argument0
sprite = argument1
imageindex = argument2
size = argument3
right = argument4
down = argument5
x += ygap
if x >= Xstart+ygap*3
{
    x = Xstart
    i += ygap
}
if MouseInBox(x,i,x+BLOCKSIZE,i+BLOCKSIZE)
{
    draw_sprite_ext(sprite,imageindex,x+jump+right,i+down,size,size,0,noone,1)
    if mouse_check_button_pressed(mb_left) and selectedobject = -1
    {
        newblock = instance_create(mouse_x,mouse_y,object)
        newblock.selected = true
    }
}
else
    draw_sprite_ext(sprite,imageindex,x+right,i+down,size,size,0,noone,1)
