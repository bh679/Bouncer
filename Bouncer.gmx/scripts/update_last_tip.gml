i = TIPSREPEATLIM-1
repeat(TIPSREPEATLIM-1)
{
    global.lastTip[i] = global.lastTip[i-1]
    i = i -1
}
global.lastTip[0] = argument0;
