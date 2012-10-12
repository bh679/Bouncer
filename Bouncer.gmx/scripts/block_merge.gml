var object;

object = argument0

var tmpBlock;
if place_meeting(x+BLOCKSIZE*image_xscale,y,object) = true //check right
{
    tmpBlock = 0
    do
    {
        tmpBlock = instance_position(x+BLOCKSIZE*image_xscale,y,object)
        if tmpBlock.image_yscale = image_yscale and tmpBlock.y = y
        {
            image_xscale += tmpBlock.image_xscale
            with(tmpBlock)
            {
                instance_destroy()
            }
        }
        else
            tmpBlock = -1
    }
    until(tmpBlock = -1 or position_meeting(x+BLOCKSIZE*image_xscale,y,object) = false)
}
if place_meeting(x,y+BLOCKSIZE*image_yscale,object) = true //check down
{
    tmpBlock = 0
    do
    {
        tmpBlock = instance_position(x,y+BLOCKSIZE*image_yscale,object)
        if tmpBlock.image_xscale = image_xscale and tmpBlock.x = x
        {
            image_yscale += tmpBlock.image_yscale
            with(tmpBlock)
            {
                instance_destroy()
            }
        }
        else
            tmpBlock = -1
    }
    until(tmpBlock = -1 or position_meeting(x,y+BLOCKSIZE*image_yscale,object) = false)
}

