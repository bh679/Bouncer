i = 0
repeat(TIPSREPEATLIM)
{
    if argument0 = global.lastTip[i]
       return true
    i += 1
}
return false
