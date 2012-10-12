//inisilize
xx = 0
yy = 0
repeat(room_height/16)
{
    xx = 0
    repeat(room_width/16)
    {
        Block[xx,yy] = -1
        xx += 1
    }
    yy += 1
}

//increase total number of levels
ini_open('customlevels.ini')
    total_custom = ini_read_real('Levels','total',0)
    ini_write_real('Levels','total',total_custom+1)
ini_close()



//get name
filename = get_string("Enter level name: ","CustomLevel"+string(total_custom))//and number at end
//get array
GetArray()
//save array to file
SaveLevelArray(filename)
//record file name in custom-levels-record-file 
ini_open('customlevels.ini')
    ini_write_string(string(total_custom),'name',string(filename))
ini_close()

//take screenshot
screen_save(working_directory+"\Levels\Custom"+string(total_custom)+".png")

