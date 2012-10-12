//next stage is locked
if Levels.unlocked[Levels.LevelsInStage[Levels.currstage]+1] = false
{
    //enough points for next stage
    if CalcAvgLevelScore(Levels.currstage) >= Levels.AverageScorePass[Levels.currstage]
    {
        Levels.unlocked[Levels.LevelsInStage[global.stage]+1] = true
        show_message("Unlocked new stage BITCHES!!!")
    }
}  
