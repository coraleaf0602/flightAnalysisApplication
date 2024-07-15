class drawBarChart
{
  int draw = 0; 
  float[] dataPoints;
  String[] labels;
  BarChart barChart;
  String bartitle;
  String barsubtitle;
  Widget menuW; 

  drawBarChart(ArrayList<Float> yAxisValues, ArrayList<String> xAxisValues, String titleEntered, String subtitleEntered, BarChart aChart, Widget returnW)
  {
    //CONVERTING AN FLOAT ARRAYLIST TO AN ARRAY
    dataPoints = new float[yAxisValues.size()];
    for (int i = 0; i<dataPoints.length; i++)
    {
      dataPoints[i] = yAxisValues.get(i);
    }

    //CONVERTING A STRING ARRAYLIST TO AN ARRAY OF STRINGS
    labels = new String[xAxisValues.size()];
    for (int i = 0; i<labels.length; i++)
    {
      labels[i] = xAxisValues.get(i);
    }

    float max = dataPoints[0];
    //Finding the maximum value in the array - so that we can figure out the range
    for (int i = 1; i < dataPoints.length; i++)
    {
      if (dataPoints[i] > max)
        max = dataPoints[i];
    }
    
    menuW = returnW; 

    //setting the x-axis, y-axis, title and range
    bartitle = titleEntered;
    barsubtitle = subtitleEntered;
    barChart = aChart;
    barChart.setData(dataPoints);
    barChart.setMinValue(0);
    barChart.setMaxValue(max+100);
    barChart.setBarLabels(labels);
    barChart.setBarGap(10);
    barChart.showValueAxis(true);
    barChart.showCategoryAxis(true);
    barChart.setBarColour(130);
  }

  // Draws the chart in the sketch
  void draw()
  {
    background(#C5D9EC);
    fill(130);
    textSize(35);
    //Title
    text(bartitle, 15, 50);
    textSize(15);
    //Subtitle
    text(barsubtitle, 15, 70);
    barChart.draw(15, 75, width-50, height-80);
    menuW.draw(); 
    noLoop(); 
  }
}
