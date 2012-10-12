/*
arg0 - room_id
arg1 - name
*/





ini_open('Records.ini')
//instance_create(0,0,obj_new_stage2)
ini_write_string(string(argument0),'name',string(argument1))

ini_close()
