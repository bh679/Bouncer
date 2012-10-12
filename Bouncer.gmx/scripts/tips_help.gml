set_tips_tutorial()


if global.platform = iOS
   set_tips_iOS()
else if global.platform = Mac
   set_tips_mac()
if global.platform = Windows or global.platform = html5
   set_tips_windows()

global.tip[global.tips] = "You bouncer better off different types of blocks"
global.tips += 1

global.tip[global.tips] = "Every stage you unlock a new block"
global.tips += 1

global.tip[global.tips] = "Each block has its own special properties."
global.tips += 1

global.tip[global.tips] = "Lava is bad"
global.tips += 1

global.tip[global.tips] = "You bounce poorly off Sand"
global.tips += 1

global.tip[global.tips] = "Wood and Rock is effective to bounce on"
global.tips += 1

global.tip[global.tips] = "Grass/Soil walls slow you a tiny bit"
global.tips += 1

global.tip[global.tips] = "Hot air reverses gravity"
global.tips += 1

global.tip[global.tips] = "There are " + string(global.total_levels) + " levels"
global.tips += 1

global.tip[global.tips] = "The balls voices can be turned off in the main menu"
global.tips += 1

global.tip[global.tips] = "Each personality of the ball has its own colour."
global.tips += 1

global.tip[global.tips] = "Each ball has its own personality."
global.tips += 1

global.tip[global.tips] = "The background changes slightly with each stage."
global.tips += 1

global.tip[global.tips] = "All image as draw by me, Brennan Hatton."
global.tips += 1

global.tip[global.tips] = "There is a marker for where you last clicked."
global.tips += 1

global.tip[global.tips] = "Its impossible to shoot the ball in a space a single block wide at speed."
global.tips += 1

global.tip[global.tips] = "There are over 20 useful tips and at least " + string(global.tips) + " unnecessary ones"
global.tips += 1

/*


global.tip[global.tips] = ""
global.tips += 1

