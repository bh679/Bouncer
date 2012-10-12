RecOutlineAlpha = 0.8
RecOutlineCol = c_white
RecCol = c_black
RecAlpha = 0.4

if obj_ctrl.DisplayEndStats
    RecHeight = 97+15+25 - 5 + 128 + 48 + 28
else
    RecHeight = 97+15+25 - 5


RecWidth = 305
RecX1 = 5
RecY1 = 5
RecX2 = RecX1 + RecWidth
RecY2 = RecY1 + RecHeight//97+15+25
    
draw_set_alpha(RecOutlineAlpha)
draw_set_color(RecOutlineCol)
draw_rectangle(RecX1,RecY1,RecX2,RecY2,true)
draw_set_alpha(RecAlpha)
draw_set_color(RecCol)
draw_rectangle(RecX1,RecY1,RecX2,RecY2,false)

//set font
draw_set_alpha(1)
draw_set_halign(fa_middle)

RecMid = RecX1/2 + RecX2/2
tmpY = 35
//score
draw_set_font(fnt_highscoreBig)
draw_text_shadow(RecMid,tmpY,"Score: "+string(global._score),c_white,c_black,1)

//best
tmpY = 64
draw_set_font(fnt_highscore)
if global._score > global.bestscore
    draw_text_shadow(RecMid,tmpY,"Best!",c_yellow,c_black,1)


tmpY = 0
StatsY = 86
padding = 4
StatsButtonText = "More Stats"
//more stats
if obj_ctrl.DisplayEndStats
{  
    StatsButtonText = "Less Stats"
    draw_set_halign(fa_left)
    
    tmpY += 24
    tmpY += 24
    draw_set_font(fnt_highscore)
    //draw_text_shadow(150,10,string(Levels.name[Levels.roomindex]),c_white,c_black,1)
    draw_text_shadow(RecX1+padding,StatsY+tmpY,"Best",c_yellow,c_black,1)
    draw_text_shadow(RecMid,StatsY+tmpY,"Last Round",c_yellow,c_black,1)
    
    draw_set_font(fnt_highscoreSmall)
    
    tmpY += 28
    draw_text_shadow(RecX1+padding,StatsY+tmpY,"Time: " + string(global.besttime/30),c_white,c_black,1)
    draw_text_shadow(RecMid,StatsY+tmpY,"Time: " + string(global.time/30),c_white,c_black,1)
    tmpY += 24
    draw_text_shadow(RecX1+padding,StatsY+tmpY,"Distance: "+string(global.bestdis),c_white,c_black,1)
    draw_text_shadow(RecMid,StatsY+tmpY,"Distance: "+string(global.dis),c_white,c_black,1)
    tmpY += 24
    draw_text_shadow(RecX1+padding,StatsY+tmpY,"Bounces: "+string(global.bestbounces),c_white,c_black,1)
    draw_text_shadow(RecMid,StatsY+tmpY,"Bounces: "+string(global.bounces),c_white,c_black,1)
    tmpY += 24
    draw_text_shadow(RecX1+padding,StatsY+tmpY,"Score: "+string(global.bestscore),c_white,c_black,1)
    draw_text_shadow(RecMid,StatsY+tmpY,"Score: "+string(global._score),c_white,c_black,1)
    tmpY += 24
    draw_text_shadow(RecX1+padding,StatsY+tmpY,"Stage: "+string(global.stage),c_white,c_black,1)
    draw_text_shadow(RecMid,StatsY+tmpY,"Stage Score: "+string(global.stageScore),c_white,c_black,1)
    tmpY += 24

    //attempts
    tmpY += 24
    draw_text_shadow(RecX1+padding,StatsY+tmpY,"Attempts: "+string(global.trys),c_white,c_black,1)
    //completions
    draw_text_shadow(RecMid,StatsY+tmpY,"Completions: "+string(global.completes),c_white,c_black,1)
}
draw_set_halign(fa_middle)
//button for more stats
draw_set_font(fnt_highscore)
boxWidth = string_width("More Stats")/2
boxHeight = 32
padding = 8
if MouseInBox(RecMid - boxWidth-padding,StatsY-padding,RecMid + boxWidth+padding,StatsY+boxHeight-padding)
{
    global.buttonclicked = true
    draw_text_shadow(RecMid,StatsY,StatsButtonText,c_black,c_black,1)
    if mouse_check_button_released(mb_left)
        obj_ctrl.DisplayEndStats = swapTrueFalse(obj_ctrl.DisplayEndStats)
}
else
    draw_text_shadow(RecMid,StatsY,StatsButtonText,c_white,c_black,1)




draw_set_halign(fa_left)
