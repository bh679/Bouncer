loaded_sprite = sprite_add(working_directory+"\Levels\"+string(roomindex)+'.png',1,false,true,0,0)

//get the width and height of the loaded sprite:
ls_width = sprite_get_width(loaded_sprite);
ls_height = sprite_get_height(loaded_sprite);

//resized scale
new_width = room_width/4
new_height = room_height/4

if new_width = ls_width and ls_height = new_height
    return loaded_sprite
    
//create a surface, which you will draw the transformed sprite on:
ls_surface = surface_create(new_width, new_height);
surface_set_target(ls_surface); 
draw_sprite_ext(loaded_sprite,0,0,0,new_width / ls_width,new_height / ls_height,0,noone,1);
//Notice you MUST have the sprite fill the whole surface, so you must make sure its origin and drawing position are ok.

//then you reset the drawing target to the default surface:
surface_reset_target( );

//delete the temp sprite you loaded:
sprite_delete(loaded_sprite);

//and save the new sprite from the surface:
surface_save(ls_surface, working_directory+"\Levels\"+string(roomindex)+'.png');

//You might also want to delete the surface to free up memory with surface_free:
surface_free( ls_surface);

return sprite_add(working_directory+"\Levels\"+string(roomindex)+'.png',1,false,true,0,0);
