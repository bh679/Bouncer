levelno = argument0

ini_open('customlevels.ini')
    fname = ini_read_string(string(levelno),'name','Name not found')
ini_close()

return fname;
