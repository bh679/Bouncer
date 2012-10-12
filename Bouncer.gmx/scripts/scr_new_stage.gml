if file_exists('SaveFile.sav')
  {
   
 ///load-test
alternating=-1;

file=file_bin_open("SaveFile.sav",0);



temp=file_bin_read_byte(file);

temp+=7*alternating;

if (temp>255) { temp-=255; }
if (temp<0) { temp+=255; }
//show_message(string(temp))
global.levelt=temp;

alternating*=-1;

file_bin_close(file);




//save
if global.levelt < argument0

{
instance_create(0,0,obj_new_stage)
alternating=1;

file=file_bin_open("SaveFile.sav",1);

temp=argument0;

temp+=7*alternating;

if (temp>255) { temp-=255; }
if (temp<0) { temp+=255; }

file_bin_write_byte(file,temp);

alternating*=-1;

file_bin_close(file);

}
else
{global.level = global.levelt}


}
 else
  {alternating=1;

file=file_bin_open("SaveFile.sav",1);

temp=0;

temp+=7*alternating;

if (temp>255) { temp-=255; }
if (temp<0) { temp+=255; }

file_bin_write_byte(file,temp);

alternating*=-1;

file_bin_close(file);} 

