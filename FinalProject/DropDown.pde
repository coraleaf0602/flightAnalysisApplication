class DrawDropDown {

  PFont airportFont;
  ScrollableList myList;
  String[] airList;
  int xpos;
  int ypos;
  String title;
  ScrollableList impl;

  DrawDropDown(int xpos, int ypos, String[] codeList, String title) {
    
    color myColour = color(247, 235, 203);
    cp5.setFont(myText);
    airList = codeList;
    this.xpos = xpos;
    this.ypos = ypos;

    this.impl = cp5.addScrollableList(title)
      .setPosition(xpos, ypos)
      .setSize(250, 275)
      .setColorBackground(myColour)
      .setBarHeight(40)
      .setItemHeight(40)
      .addItems(airList)
      .setColorCaptionLabel(0)
      .setColorValueLabel(0)
      .setScrollSensitivity(1000000.1)
      .setType(ScrollableList.LIST);
  }
}
