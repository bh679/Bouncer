stage = argument0
if stage > 1
   return (Levels.LevelsInStage[stage-1] + LevelsBeforeStage(stage-1))
return Levels.LevelsInStage[stage-1]
