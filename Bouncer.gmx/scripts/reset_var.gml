global.besttime = -1
global.time = -1
global.bestscore = -1
global._score = -1
global.bestbounces = -1
global.bounces = -1
global.bestdis = -1
global.dis = -1
global.roomend = false
global.skipping = false
global.trys = 0
global.completes = 0
global.stageScore = CalcAvgLevelScore(global.stage)

//if path = true
with(obj_ball)
{
    voice =  floor(random(VOICES))
    pos_index = 0
    repeat(MAXPOS+1)
    {
        path_x[pos_index] = x
        path_y[pos_index] = y
        pos_index += 1
    }
}

with(obj_ctrl)
{
    pathindex = 0
    pathmax = 0
}
with(obj_new_level)
{
    pathindex = 0
    pathmax = 0
}
