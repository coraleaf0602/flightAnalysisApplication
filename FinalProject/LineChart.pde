//class LineChart{
//  int xpos;
//  int ypos; 
//  int chartWidth;
//  int chartHeight;
//  String title; 
//  String subtitle;
//  Widget returnWidget;
//  XYChart lineChart;  
  
//  LineChart(int xposition, int yposition, int widthOfChart, int heightOfChart, String titleOfChart, String subtitleOfChart, Widget backWidget){
//    xpos = xposition;
//    ypos = yposition;
//    chartWidth = widthOfChart;
//    chartHeight = heightOfChart;
//    title = titleOfChart;
//    subtitle = subtitleOfChart;
//    returnWidget = backWidget;
//  }
  
//  void setupLineChart{
//    lineChart.showXAxis(true);
//    lineChart.showYAxis(true);
//    lineChart.setPointColour(color(180,50,50,200));
//    lineChart.setPointSize(10);
//    lineChart.setLineWidth(3);
//  }
  
//  void drawLineChart{
//    background(255);
//    fill(150);
//    textSize(35);
//    text(title, 15, 50);
//    textSize(15);
//    text(subtitle, 15, 70);
//    lineChart.draw(15, 75, width-50, height-80);
//    returnWidget.draw(); 
//  }
//}

   
   
   
   // For chart classes.
 
// Displays a simple line chart representing a time series.
 
//XYChart lineChart;
 
//// Loads data into the chart and customises its appearance.
//void setup()
//{
//  size(900,600);
//  textFont(createFont("Arial",10),10);
 
//  // Both x and y data set here.  
//  lineChart = new XYChart(this);
//  lineChart.setData(new float[] {101, 102, 103, 104, 105, 106,
//                                  107, 108, 109, 110, 111},
//                    new float[] { 6322,  6489,  6401, 7657, 9649, 9767,
//                                  12167, 15154, 18200, 23124, 28645});
   
//  // Axis formatting and labels.
//  lineChart.showXAxis(true); 
//  lineChart.showYAxis(true); 
//  lineChart.setMinY(0);
     
//  lineChart.setYFormat("###,###");  // Monetary value in $US
//  lineChart.setXFormat("#/##");      // Year
   
//  // Symbol colours
//  lineChart.setPointColour(color(180,50,50,200));
//  lineChart.setPointSize(10);
//  lineChart.setLineWidth(3);
//}
 
//// Draws the chart and a title.
//void draw()
//{
//  background(255);
//  textSize(15);
//  lineChart.draw(100,100,width-200,height-200);
   
//  // Draw a title over the top of the chart.
//  fill(120);
//  textSize(20);
//  text("Flights, over time, USA", 170,70);
//  textSize(11);
//  text("Number of flights", 170,90);
//}

//Tuathal Line Chart visual representation 
class LineChart{
  //int xpos;
  //int ypos; 
  //int chartWidth;
  //int chartHeight;
  float[] xAxisPoints;
  float[] yAxisPoints; 
  String title; 
  //String subtitle;
  String xAxisLabel; 
  Widget returnWidget;
  XYChart lineChart;  
  
  LineChart(XYChart linechart,
  String titleOfChart, String firstLine, String secondLine, float[] xAxisPoints, float[] yAxisPoints, Widget backWidget)
  {
    //xpos = xposition;
    //ypos = yposition;
    //chartWidth = widthOfChart;
    //chartHeight = heightOfChart;
    
    
    title = titleOfChart;
    //subtitle = subtitleOfChart;
    returnWidget = backWidget;
    
    lineChart = linechart; 
    lineChart.setData(xAxisPoints, yAxisPoints); 
    lineChart.showXAxis(true);
    lineChart.showYAxis(true);
    lineChart.setPointColour(color(#dfa0bf));
    lineChart.setPointSize(10);
    lineChart.setLineWidth(3);
    //lineChart.setMinY(); 
    lineChart.setMinX(1.0);
    lineChart.setXAxisLabel(firstLine + secondLine); 
    lineChart.setYFormat("###,###");  // Monetary value in $US
    lineChart.setXFormat("#");      // Numbered in Order 
  }
  
  void drawLineChart(){
    background(#C5D9EC);
    fill(130);
    textSize(35);
    text(title, 15, 50);
    textSize(15);
    text(subtitle, 15, 70);
    lineChart.draw(25, 75, width-50, height-150);
    returnWidget.draw(); 
  }
}
