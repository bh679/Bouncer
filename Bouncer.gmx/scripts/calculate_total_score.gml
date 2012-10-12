//get total score
score = 0
index = 0
ini_open('Records.ini')
repeat(300)
  {index += 1
  if ini_section_exists(string(index))
    {score += ini_read_real(string(index),'score',0)}
  }
  
