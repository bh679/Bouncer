if file_exists('custom_levels.ini') //check if there are any custom levels
  {//ask if you want to delete
  if show_question('You have a new and improved version of Bouncer. Version: '+ string(argument0) + '  Your custom made levels must be erased, else risk corrupting other premade levels. Is this ok?')
    {//ininsilise variables
    index = 0
    repeat(100)
      {room_id[index] = 0
       index += 1}
    index = 0
    //delete custom level files
    ini_open('custom_levels.ini')
    repeat(100)
      {if ini_section_exists(string(index))
        {file_name = ini_read_string(string(index),'name',noone)
         room_id[index] = ini_read_real(string(index),'id',noone)
         file_delete(file_name)
         }
      index += 1}
    ini_close()
    
    //delete records of custom levels
    
    index_max = index - 1
    index = 0
    repeat(index_max)
      {ini_open('Records.ini')
      ini_section_delete(string(room_id[index]))
      ini_close()
      index += 1}
       
    //delete from levels.ini
    ini_open('levels.ini')
    ini_key_delete('total','min id')
    index = 0
    repeat(100)
      {ini_key_delete('levels',string(index))
      index -= index
      }
  
  

    }
  }
  
//update version no
ini_open('options.ini')
ini_write_real('version','no',argument0)
ini_close()
file_delete('custom_levels.ini')
