class Widget {
  int x, y, width, height;
  String label; 
  int event;
  //each event would have a unique number associated with it 
  color widgetColor, labelColor;
  PFont widgetFont;

  Widget(int x,int y, int width, int height, String label,
  color widgetColor, PFont widgetFont, int event)
  {
    this.x=x; this.y=y; this.width = width; this.height= height;
    this.label=label; this.event=event; 
    this.widgetColor=widgetColor; this.widgetFont=widgetFont;
    labelColor= color(0);
   }
   
  void draw()
  {
    stroke(0);
    fill(widgetColor);
    rect(x,y,width,height);
    fill(labelColor);
    textFont(widgetFont);
    text(label, x+GAP, y+height-GAP);
  }
  
  int getEvent(int mX, int mY)
  {
     if(mX>x && mX < x+width && mY >y && mY <y+height)
     {
        return event;
     }
     return EVENT_NULL;
  }
  
  void changeBorderColor() 
  {
    stroke(255);
    fill(widgetColor);
    rect(x,y,width,height);
    fill(labelColor);
    textFont(widgetFont);
    text(label, x+GAP, y+height-GAP);
    
  }
}
