
draw_set_alpha(0.8)
draw_set_color(c_white)
draw_rectangle(5,5,300,97+15+25,true)
draw_set_alpha(0.4)
draw_set_color(c_black)
draw_rectangle(5,5,300,97+15+25,false)
draw_set_alpha(1)

//best time
if global.besttime != -1
    draw_text_shadow(10,35,"Best Time: " + string(global.besttime/30),c_white,c_black,1)
else
    draw_text_shadow(10,35,"Best Time: X",c_white,c_black,1)

    //best distance
if global.bestdis != -1
    draw_text_shadow(10,50,"Best Distance: "+string(global.bestdis),c_white,c_black,1)
else
    draw_text_shadow(10,50,"Best Distance: X",c_white,c_black,1)

    //best bouncers
if global.bestbounces != -1
    draw_text_shadow(10,65,"Best Bounces: "+string(global.bestbounces),c_white,c_black,1)
else
    draw_text_shadow(10,65,"Best Bounces: X",c_white,c_black,1)

    //best score
if global.bestscore != -1
    draw_text_shadow(10,80,"Best Score: "+string(global.bestscore),c_white,c_black,1)
else
    draw_text_shadow(10,80,"Best Score: X",c_white,c_black,1)
    
    //attempts
draw_text_shadow(10,100,"Attempts: "+string(global.trys),c_white,c_black,1)
//completions
draw_text_shadow(10,115,"Completions: "+string(global.completes),c_white,c_black,1)

//draw_text_shadow(150,10,string(Levels.name[Levels.roomindex]),c_white,c_black,1)
draw_text_shadow(170,35,"Time: " + string(global.time/30),c_white,c_black,1)
draw_text_shadow(170,50,"Distance: "+string(global.dis),c_white,c_black,1)
draw_text_shadow(170,65,"Bounces: "+string(global.bounces),c_white,c_black,1)
draw_text_shadow(170,80,"Score: "+string(global._score),c_white,c_black,1)
draw_text_shadow(170,95,"Stage Score: "+string(global.stageScore),c_white,c_black,1)
draw_text_shadow(170,135,"Stage : "+string(global.stage),c_white,c_black,1)
if global.stage > 0
{
 
   draw_text_shadow(170,115,string(Levels.roomindex - LevelsBeforeStage(global.stage))+"/"+string(Levels.LevelsInStage[global.stage]),c_white,c_black,1)//level/stage
}
else
   draw_text_shadow(170,115,string(Levels.roomindex)+"/"+string(Levels.LevelsInStage[0]),c_white,c_black,1)//level/stage
    
    
//name
draw_text_shadow(10,10,string(Levels.name[Levels.roomindex]),c_white,c_black,1)

