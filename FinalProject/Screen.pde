class Screen
{
  ArrayList screenWidget;
  color backgroundColor;
  int event;
  Widget aWidget;
  ScrollableList impl;
  String[] listOfAirports = {"JFK", "DCA", "LAX", "FLL", "SEA", "HNL", "ORD", "LAS", "DAL", "HOU", "MCI", "ATW", "LGB", "DFW", "OGG", "IDA", "PHX", "EWR", "MCO", "SJC", "PDX", "BOS", "JAX", "SFO" };

  
  Screen(color bG)
  {
    this.backgroundColor = bG;
    screenWidget = new ArrayList();
  }


  void draw()
  {
    background(backgroundColor);
    
    if (screenWidget!=null)
    {
      for (int i = 0; i<screenWidget.size(); i++)
      {
        Widget aWidget = (Widget)screenWidget.get(i);
        aWidget.draw();
      }
    }
  }

  void addWidget(Widget aWidget)
  {
    screenWidget.add(aWidget);
  }
  
  void addList(){
    
       cp5.setFont(listFont);
       impl = cp5.addScrollableList("List of airports")
      .setPosition(600, 325)
      .setSize(250, 275)
      .setColorBackground(color(247, 235, 203))
      .setBarHeight(40)
      .setItemHeight(40)
      .addItems(listOfAirports)
      .setColorCaptionLabel(0)
      .setColorValueLabel(0)
      .setScrollSensitivity(1000000.1)
      .setType(ScrollableList.LIST);
  }
  
  void removeList(){
           impl = cp5.addScrollableList("List of airports")
      .setPosition(1000, 1000)
      .setSize(250, 275)
      .setColorBackground(color(247, 235, 203))
      .setBarHeight(40)
      .setItemHeight(40)
      .addItems(listOfAirports)
      .setColorCaptionLabel(0)
      .setColorValueLabel(0)
      .setScrollSensitivity(1000000.1)
      .setType(ScrollableList.LIST);
  }

  int getEvent(int mX, int mY, Widget aWidget)
  {
    if (mX>aWidget.x && mX < aWidget.x+width && mY >aWidget.y && mY <aWidget.y+height)
    {
      return event;
    }
    return EVENT_NULL;
  }

}
