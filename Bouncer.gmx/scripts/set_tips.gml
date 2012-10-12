global.tips = 0

tips_quotes()
tips_silly()
tips_jokes()
tips_meinfo()
tips_help()
tips_credits()

i = 0
repeat(TIPSREPEATLIM)
{
    global.lastTip[i] = -1
    i += 1
}
