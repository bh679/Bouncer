_sprite = argument0
_image_index = argument1
_x = argument2
_y = argument3
_xscale = argument4
_yscale = argument5
_angle = argument6
_blend = argument7
_alpha = argument8
_randomSprite = argument9
var tmpx, tmpy;
tmpx = 0
repeat(_xscale)
{
    tmpy = 0
    repeat(_yscale)
    {
        if _randomSprite = true
            _index = abs(((sin(tmpx)*10+cos(tmpy)*17)+_image_index) mod 5)
        else
            _index = _image_index
            
        if _sprite = spr_grass
            ran = ((ran1 + i + _index + 5*sin(i) + 3*cos(3*i) + sin(i)) mod 3)
            
        if _sprite = spr_dirt
            draw_sprite_ext(_sprite,obj_ctrl.soilIndexArray[_index],_x+tmpx,_y+tmpy,1,1,_angle,_blend,_alpha)
        else if _sprite = spr_wood
            draw_sprite_ext(_sprite,0,_x+tmpx,_y+tmpy,1,1,_angle,_blend,_alpha)
        else if _sprite = spr_grass
            draw_sprite_ext(_sprite,ran,_x+tmpx,_y+tmpy - floor(ran*16),1,1+ran,_angle,_blend,_alpha)
        else
            draw_sprite_ext(_sprite,_index,_x+tmpx,_y+tmpy,1,1,_angle,_blend,_alpha)
        tmpy += 16
    }
    tmpx += 16
}



if global.debuggin draw_rectangle(x,y,x+_xscale*16,y+_yscale*16,true)//debuggin
