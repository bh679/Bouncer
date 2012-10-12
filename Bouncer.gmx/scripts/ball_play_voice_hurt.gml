if global.platform = HTML5
   exit

if global.soundOn = false
   exit

if global.voices = true
{
    if speed > 0.8
    {
        if (floor(random(2)))
            play_voice('ah',voice)
        else
            play_voice('oach',voice)
        speak = true
        alarm[3] = 15
    }
}
