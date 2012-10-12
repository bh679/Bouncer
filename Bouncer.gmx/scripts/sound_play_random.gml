//argument0 = no of sounds
//arg1 - sound1
//arg2 - sound2
//arg3 ... so on    max of 10 sounds

ran = random(argument0*10)

if ran >= 0 and ran < 10
  {sound_play(argument1)}
  
if ran >= 10 and ran < 20 and argument0 > 1
  {sound_play(argument2)}
  
if ran >= 20 and ran < 30 and argument0 > 2
  {sound_play(argument3)}
  
if ran >= 30 and ran < 40 and argument0 > 3
  {sound_play(argument4)}
  
if ran >= 40 and ran < 50 and argument0 > 4
  {sound_play(argument5)}
  
if ran >= 50 and ran < 60 and argument0 > 5
  {sound_play(argument6)}

if ran >= 60 and ran < 70 and argument0 > 6
  {sound_play(argument7)}
  
if ran >= 70 and ran < 80 and argument0 > 7
  {sound_play(argument8)}
  
if ran >= 80 and ran < 90 and argument0 > 8
  {sound_play(argument9)}
  
if ran >= 90 and ran < 100 and argument0 > 9
  {sound_play(argument10)}
