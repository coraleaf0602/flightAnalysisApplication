//Oscar PieChart visual representation 
class PieChart {

  int xpos;
  int ypos;
  int diameter;
  String[] listOfNames;
  float[] listOfDecimals;
  float[] listOfAngles;
  int firstY = 225;
  color sliceColour;
  String title;
  Widget returnWidget;

  PieChart(int xpos, int ypos, int diameter, String[] listOfNames, float[] listOfDecimals, String title, Widget returnWidget) {
    this.xpos = xpos;
    this.ypos = ypos;
    this.diameter = diameter;
    this.listOfNames = listOfNames;
    this.listOfDecimals = listOfDecimals;
    this.title = title;
    this.returnWidget = returnWidget; 
    listOfAngles = new float[listOfDecimals.length];

    for (int i = 0; i < listOfDecimals.length; i++) {
      listOfAngles[i] = listOfDecimals[i] * 360;
    }
  }

  void draw() {
    background(#C5D9EC);
    fill(130);
    rect(600, 100, 250, 400);
    float lastAngle = 0;
    
    fill(255);
    textSize(25);
    text(title, 625, 125);
    
    for (int i = 0; i < listOfAngles.length; i++) {
      switch (i) {
      case 0:
        sliceColour = color (#dfa0bf);
        break;
      case 1:
        sliceColour = color (#b6d7a8);
        break;
      case 2:
        sliceColour = color (#f9cb9c);
        break;
      default:
        sliceColour = color (0, 0, 0);
        break;
      }

      fill(sliceColour);
      stroke(255);
      arc(xpos, ypos, diameter, diameter, lastAngle, lastAngle+radians(listOfAngles[i]));
      lastAngle += radians(listOfAngles[i]);
      textSize(25);
      text(listOfNames[i], 625, firstY);
      firstY += 50;
      
      returnWidget.draw(); 
      noLoop(); 
    }
  }
}
