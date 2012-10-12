tipalpha = 1
alarm[1] = 5*30
alarm[2] = 20*30
//declar temp variables
var line, lastspace, char;
//inisalize variables
lines = 1
lastspace = -1
i = 1
line = '';
linewidth = 0

//choose tip index
do
{
    tipno = floor(random(global.tips))
}until(!tip_was_used_last(tipno))

update_last_tip(tipno)

//get string from tip array
curr_tip = global.tip[tipno]
//add space to start of string
curr_tip = string_insert(" ",curr_tip,lastspace)

//Add new line characters to string
//repeat for size of string
repeat(string_length(curr_tip))
{
    //get character at i
    char = string_char_at(curr_tip,i)
    //char is added to the current line
    line = string(line) + string(char)
    
    //if the char is a space
    if char = ' '
    {
        //record space spoition
        lastspace = i
        //record width of line so far
        linewidth = max(min(15*16,string_width(line)),linewidth)
    }
    
    //if line is too big
    if string_width(line) > max(15*16,linewidth)
    {
        //check if this line has a space
        if lastspace = -1
            //increase max size of line's for string
            linewidth = max(string_width(line),linewidth)
        else
        {
            //delete the space
            string_delete(curr_tip,lastspace,1)
            //instert the new line character at end of last word
            curr_tip = string_insert("#",curr_tip,lastspace)
            //increase number of lines
            lines += 1
            //start next line from newline character
            i = lastspace+1
            //null the next line
            line = 0
            //no spaces have been found this line
            lastspace = -1
        }
    } 
    
    //next character
    i += 1
}

//check if lastline is bigger than any other lines.
linewidth = max(min(15*16,string_width(line)),linewidth)

