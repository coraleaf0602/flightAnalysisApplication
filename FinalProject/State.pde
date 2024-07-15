class State
{
  String stateCode =""; 
  String name = ""; 
  float minX; 
  float minY; 
  float maxX; 
  float maxY; 
  boolean selected = false; 
  
  State(String name, String stateCode, float minX, float maxX, float minY, float maxY) 
  {
    this.stateCode = stateCode; 
    this.name = name; 
    this.minX = minX; 
    this.maxX = maxX; 
    this.minY = minY; 
    this.maxY = maxY; 
  } 
  
  int checkNumberOfFlights(String[] stateCodes) 
  {
    int numberOfStateFlights = 0;
    for (int i = 0 ; i < stateCodes.length-1 ; i++) 
    {
      if (stateCodes[i].equalsIgnoreCase(this.stateCode)) 
      {
        numberOfStateFlights++;
        println(numberOfStateFlights); 
      }
    }
    return numberOfStateFlights;
  }
  
  //float getAverageLatenessDeparting(String[] stateCodes){
    
  //}
  
  void checkMousePosition(float x, float y, String[] stateCodes) 
  {
    if (x >= this.minX && x <= this.maxX && y >= this.minY && y <= this.maxY) 
    {
      int count = checkNumberOfFlights(stateCodes); 
      // Draws the text box 
      statesDraw(x, y, count); 
    }
  }
  
  void statesDraw(float x, float y, int count) 
  {
      stroke(2,0,0);
      fill(240,240,240, 200);
      rect((x)-50, (y)-13,150,50);
      textAlign(LEFT);
      fill(12,15,20);
      //text(name,x-45, y); 
      text("Number Of Flights From ", x-45, y); 
      text(name + ":" , x-45, y+10);
      text(count, x-45, y+30); 
      noLoop();
  }
} 
