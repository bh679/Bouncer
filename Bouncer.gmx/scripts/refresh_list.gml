//arg0 ~ 

ini_open('levels.ini')
room_temp[0] = ini_read_real('levels',string(argument0-5),0)
room_temp[1] = ini_read_real('levels',string(argument0-4),0)
room_temp[2] = ini_read_real('levels',string(argument0-3),0)
room_temp[3] = ini_read_real('levels',string(argument0-2),0)
room_temp[4] = ini_read_real('levels',string(argument0-1),0)
room_temp[5] = ini_read_real('levels',string(argument0),0)
room_temp[6] = ini_read_real('levels',string(argument0+1),0)
room_temp[7] = ini_read_real('levels',string(argument0+2),0)
room_temp[8] = ini_read_real('levels',string(argument0+3),0)
room_temp[9] = ini_read_real('levels',string(argument0+4),0)
room_temp[10] = ini_read_real('levels',string(argument0+5),0)
ini_close()

ini_open('Records.ini')
room_temp_name[0] = ini_read_string(string(room_temp[0]),'name','')
room_temp_background[0] = ini_read_real(string(room_temp[0]),'background',bg_peace)
room_temp_name[1] = ini_read_string(string(room_temp[1]),'name','')
room_temp_background[1] = ini_read_real(string(room_temp[1]),'background',bg_peace)
room_temp_name[2] = ini_read_string(string(room_temp[2]),'name','')
room_temp_background[2] = ini_read_real(string(room_temp[2]),'background',bg_peace)
room_temp_name[3] = ini_read_string(string(room_temp[3]),'name','')
room_temp_background[3] = ini_read_real(string(room_temp[3]),'background',bg_peace)
room_temp_name[4] = ini_read_string(string(room_temp[4]),'name','')
room_temp_background[4] = ini_read_real(string(room_temp[4]),'background',bg_peace)
room_temp_name[5] = ini_read_string(string(room_temp[5]),'name','')
room_temp_background[5] = ini_read_real(string(room_temp[5]),'background',bg_peace)
room_temp_name[6] = ini_read_string(string(room_temp[6]),'name','')
room_temp_background[6] = ini_read_real(string(room_temp[6]),'background',bg_peace)
room_temp_name[7] = ini_read_string(string(room_temp[7]),'name','')
room_temp_background[7] = ini_read_real(string(room_temp[7]),'background',bg_peace)
room_temp_name[8] = ini_read_string(string(room_temp[8]),'name','')
room_temp_background[8] = ini_read_real(string(room_temp[8]),'background',bg_peace)
room_temp_name[9] = ini_read_string(string(room_temp[9]),'name','')
room_temp_background[9] = ini_read_real(string(room_temp[9]),'background',bg_peace)
room_temp_name[10] = ini_read_string(string(room_temp[10]),'name','')
room_temp_background[10] = ini_read_real(string(room_temp[1]),'background',bg_peace)
ini_close()

  
if room_temp_background[5] = bg_peace
  {room_caption = 'The begining'}
  
if room_temp_background[5] = bg_overgrown
  {room_caption = 'Jungle'}
  
if room_temp_background[5] = bg_square_house
  {room_caption = 'Improving Nature'}
  
if room_temp_background[5] = bg_lava
  {room_caption = 'Fighting Back'}
  
if room_temp_background[5] = bg_woodchipper
  {room_caption = 'Needs'}
  
if room_temp_background[5] = bg_sand
  {room_caption = 'Subconscious'}  
  
if room_temp_background[5] = bg_steelworks
  {room_caption = 'Industries'}  
    
if room_temp_background[5] = bg_survivalofthefittest
  {room_caption = 'Survival of the Fittest'}

if room_temp_background[5] = bg_insteelworks or room_temp_background[0] = bg_insteelworks2 
  {room_caption = 'Power'}
  
if room_temp_background[5] = bg_water_dark
  {room_caption = 'Irrigation'}
  
if room_temp_background[5] = bg_dead_wood
  {room_caption = 'Redundancy'}

if room_temp_background[5] = bg_tornado
  {room_caption = 'Relentlessness'}
  
if room_temp_background[5] = bg_nuclear
  {room_caption = 'Manipulation'}
    
if room_temp_background[5] = bg_screen or room_temp_background[0] = bg_screen_binary 
  {room_caption = 'Dominance'}
  
if room_temp_background[5] = bg_city_of_ash
  {room_caption = ('Infurno')}
      
if room_temp_background[5] = bg_distortion
  {room_caption = ('Distortion')}
  
if room_temp_background[5] = bg_space
  {room_caption = ('Infinity')}
