stage = argument0

total = 0
//get score for all levels
ini_open('records.ini')
i = 1
repeat(Levels.LevelsInStage[stage])
{
    
    //add together
    total += ini_read_real(string(i),'score',0)
    i+=1
    //show_message(string(total) + " total: "+ string(Levels.LevelsInStage[stage]) + "stage:" + string(stage))//debuggin
}
ini_close()
//devide by scores
total = total/Levels.LevelsInStage[stage]

//use recursion to add all the other stages
if stage > 0
   total = (total + CalcAvgLevelScore(stage-1))/2

return total
