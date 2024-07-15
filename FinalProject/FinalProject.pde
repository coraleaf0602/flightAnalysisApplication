////<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>//

////Main Screen + Screen for barchart + screen for piChart
//// Cora 06/04 added Map to widget Map
////Error checking whether if pie or barchart option pressed -> Cora 12/04
////New filter method for airport and dates -> Cora 10/04
//import java.util.Timer;
//import java.util.TimerTask;
//import java.util.Collections;
//import java.io.*;
//import java.util.*;
//import org.gicentre.utils.stat.*;
//import java.lang.Object;
//import controlP5.*;
////REMEMEMBER TO IMPORT THE SIXTH LIBRARY - should be in sketch section (import library)

////Variables for ScrollableList
//boolean noList = true;
//ControlP5 cp5;
//PFont listFont;

////Variables for Map
//PImage MapOfUS;
//// Creating arraylists to contain each state object
//State state;
//int totalCount = 51;
//float mapScreenWidth;
//float mapScreenHeight;
//ArrayList<State> stateList;
//String[] mapCoOrds;
//String[] stateName;
//String[] stateCode;
//float[]minX;
//float[]minY;
//float[]maxX;
//float[]maxY;
//String[] flightCodes;
//PFont mapText;

////Variables for LineChart
//XYChart lineChartParent;
//LineChart lineChart;
//float[] xAxisLabels;
//float[] yAxisLabels;


////Variables for BarChart
//Table table;
//drawBarChart myChart;
//BarChart barchart;
//String title;
//String subtitle;
//ArrayList<Float> yAxis;
//ArrayList<String> xAxis;
//boolean entered = false;

////Variables for Pichart
//PieChart newPie;

////Variables for Screens
//PImage plane;
//PImage plane2;
//PFont welcomeFont, subFont;
//int i;
//int j;
//boolean main = false;
//Screen mainMenu;
//Screen welcomeScreen;
//boolean welcome = true;

////BarScreen barChartScreen;
//ArrayList widgetList;
//Screen airportScreen;
//Screen datesScreen;
//Screen distanceScreen;
//Screen mapScreen;
//boolean airport = false;
//boolean dates = false;
//boolean distanceS = false;
//boolean map = false;
//boolean barSelected = false;
//boolean pieSelected = false;
//Widget widget1, widget2, widget3, widget4, barChartWidget, pieChartWidget,
//  highToLowWidget, lowToHighWidget, returnWidget, continueWidget;

////Variables for filter
//PFont myText;
//int x;
//String flightDate;
//String IATA;
//int flightNum;
//String oAirport;
//String oCity;
//String oState;
//int oWAC;
//String dAirport;
//String dCity;
//String dState;
//int dWAC;
//int estDT;
//int actualDT;
//int estAT;
//int actualAT;
//boolean cancel;
//boolean divert;
//ArrayList<Flight> flightList;
//ArrayList<Flight> filteredList;
//ArrayList<Integer> tempDistanceList;
//ArrayList<Integer>  sortedTempDistanceList;
//boolean highToLow = false;
//boolean lowToHigh = false;

//int query;
//int distanceMiles;
//String text = "";
//String displayText = "";
//String finalText = "";
//String filteredListString;
//int y;
//float onTimeFlights;
//float lateDepFlights;
//float earlyDepFlights;
//float numberOfFlights;
//float numberOfCancelledFlights;
//float numberOfDivertedFlights;
//int counter;
//PImage airportInfo, dateInfo, distanceInfo, mapInfo;
//// Ava -> pop up screen when hovered over a certain widget

//void setup()
//{
//  //Initialising variables
//  x = 0;
//  y = 20;
//  size(900, 600);
//  flightList = new ArrayList<Flight>();
//  filteredList = new ArrayList<Flight>();
//  tempDistanceList = new ArrayList<Integer>();
//  sortedTempDistanceList = new ArrayList<Integer>();
//  xAxis = new ArrayList<String>();
//  yAxis = new ArrayList<Float>();
//  title = "Number of Flights On Time/Early/Late";
//  subtitle = "";
//  listFont = loadFont("Calibri-24.vlw");
//  myText = loadFont("ArialMT-24.vlw");
//  welcomeFont = loadFont("Arial-ItalicMT-56.vlw");
//  subFont = loadFont("Arial-ItalicMT-20.vlw");
//  mapText = loadFont("PTSans-Regular-11.vlw");
//  textFont(myText);
//  background(0);
//  barchart = new BarChart(this);
//  lineChartParent = new XYChart(this);
//  cp5 = new ControlP5(this);
//  airportInfo = requestImage("airportInfo.png");
//  dateInfo = requestImage("dateInfo.png");
//  distanceInfo = requestImage("distanceInfo.png");
//  mapInfo = requestImage("mapInfo.png");
//  plane = loadImage("realPlane3.png");
//  plane2 = loadImage("realPlane3.png");
//  i=0;
//  j=0-plane.width;

//  query = 0;
//  MapOfUS = loadImage("BlankwithLabels.svg.png");
//  readFullFlight();
//  //readFlights();
//  readData();


//  //setting up Main Menu
//  widget1=new Widget(500, 200, 180, 40,
//    "Airport", color(#ffe599),
//    myText, EVENT_BUTTON1);

//  widget2=new Widget(200, 380, 180, 40,
//    "Dates", color(#ffe599),
//    myText, EVENT_BUTTON2);

//  widget3=new Widget(500, 380, 180, 40,
//    "Distance", color(#ffe599),
//    myText, EVENT_BUTTON3);

//  widget4= new Widget(200, 200, 180, 40, // added widget 4 (map widget) so now EVENT_BUTTON4 is for the map and EVENT_RETURN is for the return button
//    "Map", color(#ffe599),
//    myText, EVENT_BUTTON4);

//  barChartWidget = new Widget(350, 400, 180, 40,
//    "Bar Chart", color(#ffe599),
//    myText, EVENT_BARCHART);

//  pieChartWidget = new Widget(350, 500, 180, 40,
//    "Pie Chart", color(#ffe599),
//    myText, EVENT_PIECHART);

//  highToLowWidget = new Widget(160, 300, 220, 40,
//    "Highest to Lowest", color(#ffe599),
//    myText, EVENT_HIGHTOLOW);

//  lowToHighWidget = new Widget(480, 300, 220, 40,
//    "Lowest to Highest", color(#ffe599),
//    myText, EVENT_LOWTOHIGH);

//  returnWidget=new Widget(775, 25, 80, 40,
//    "Menu", color(#ffe599), myText,
//    EVENT_RETURN);

//  continueWidget = new Widget(350, 415, 180, 40,
//    "Continue", color(#ffe599),
//    myText, EVENT_WELCOME);


//  welcomeScreen = new Screen(color(#C5D9EC));
//  mainMenu = new Screen(color(#C5D9EC));
//  airportScreen = new Screen(color(#C5D9EC));
//  datesScreen = new Screen(color(#C5D9EC));
//  distanceScreen = new Screen(color(#C5D9EC));
//  mapScreen = new Screen(color(#C5D9EC));

//  welcomeScreen.addWidget(continueWidget);
//  airportScreen.addWidget(returnWidget);
//  airportScreen.addWidget(barChartWidget);
//  airportScreen.addWidget(pieChartWidget);
//  datesScreen.addWidget(returnWidget);
//  datesScreen.addWidget(barChartWidget);
//  datesScreen.addWidget(pieChartWidget);
//  distanceScreen.addWidget(returnWidget);
//  distanceScreen.addWidget(highToLowWidget);
//  distanceScreen.addWidget(lowToHighWidget);
//  mapScreen.addWidget(returnWidget);
//  mainMenu.addWidget(widget1);
//  mainMenu.addWidget(widget2);
//  mainMenu.addWidget(widget3);
//  mainMenu.addWidget(widget4);
//}

//void draw()
//{
//  background(255);
//  fill(140);     // AVA 22/03 added this to display before the chart//

//  if (welcome) {                  // Ava 05.04 welcome screen to display before main menu.
//    welcomeScreen.draw();
//    mousePos();
//    image(plane, i++, 150);
//    if (i>=(900-plane.width)) {
//      image(plane2, j++, 150);
//      if (j>=0) {
//        i=0;
//        j=0-plane.width;
//      }
//    }
//    fill(0);
//    textFont(welcomeFont);
//    text("Welcome!", 310, 350);
//    textFont(subFont);
//    text("click continue to explore the data", 290, 380);
//  }

//  if (main)
//  {
//    mainMenu.draw();
//    mousePos();
//    text("Select a query!", 350, 315);
//  }
//  if (query==1)
//  {
//    if (noList)
//    {
//      airportScreen.addList();
//      noList = false;
//    }
//    airportScreen.draw();
//    mousePos();
//    text("Enter an airport code: ", 310, 200);  // Cora 22/03 made this work for lowercase state codes
//    text("Press the desired visual representation and then press enter", 130, 230);
//    text(displayText, 400, 300);
//  }

//  if (query==2) {
//    datesScreen.draw();
//    mousePos();
//    text("Enter a date in the form MM/DD/YYYY", 240, 200);
//    text("Press the desired visual representation and then press enter", 130, 360);
//    text(displayText, 370, 270);
//  }
//  if (query==3) {
//    distanceScreen.draw();
//    mousePos();
//    text("Select how to sort the distances", 260, 200);
//  }


//  if (entered&&(pieSelected||barSelected)&&!filteredList.isEmpty())
//  {
//    airportScreen.removeList();
//    noList = true;
//    if (query==1) {
//      if (pieSelected) {
//        background(100);
//        title = "Number of Flights On Time/Early/Late";
//        float totalFlights = onTimeFlights + earlyDepFlights + lateDepFlights;
//        float onTimePortion = (float)onTimeFlights / totalFlights;
//        float earlyDepPortion = (float)earlyDepFlights / totalFlights;
//        float lateDepPortion = (float)lateDepFlights / totalFlights;

//        String[] listOfNames = {"Early Flights", "On Time Flights", "Late Flights"};
//        float[] listOfDecimals = {earlyDepPortion, onTimePortion, lateDepPortion};

//        newPie = new PieChart(900/3, 600/2, 500, listOfNames, listOfDecimals, text.toUpperCase() + " Departed Flights", returnWidget);
//        newPie.draw();
//        entered = false;
//      }
//      if (barSelected) {
//        title = "Number of Flights On Time/Early/Late";
//        yAxis.add(onTimeFlights);
//        yAxis.add(earlyDepFlights);
//        yAxis.add(lateDepFlights);
//        xAxis.add("On Time Flights");
//        xAxis.add("Early Flights");
//        xAxis.add("Late Flights");
//        myChart = new drawBarChart(yAxis, xAxis, title, subtitle, barchart, returnWidget);
//        myChart.draw();
//        entered = false;
//      }
//    }
//    if (query==2) {
//      if (barSelected) {
//        title = "Number of Flights as Normal/Diverted/Cancelled";
//        yAxis.add(numberOfFlights);
//        yAxis.add(numberOfDivertedFlights);
//        yAxis.add(numberOfCancelledFlights);
//        xAxis.add("Number of normal flights");
//        xAxis.add("Diverted Flights");
//        xAxis.add("Cancelled Flights");
//        myChart = new drawBarChart(yAxis, xAxis, title, subtitle, barchart, returnWidget);
//        myChart.draw();
//        entered=false;
//      }
//      if (pieSelected) {
//        background(255);
//        float totalFlights = numberOfFlights + numberOfDivertedFlights + numberOfCancelledFlights;
//        float normalPortion = numberOfFlights / totalFlights;
//        float divertedPortion = numberOfDivertedFlights / totalFlights;
//        float cancelledPortion = numberOfCancelledFlights / totalFlights;

//        String[] listOfNames = {"Number of normal\n flights", "\nDiverted Flights", "\nCancelled Flights\n"};
//        float[] listOfDecimals = {normalPortion, divertedPortion, cancelledPortion};

//        newPie = new PieChart(900/3, 600/2, 500, listOfNames, listOfDecimals, text.toUpperCase() + "\n Departed Flights", returnWidget);
//        newPie.draw();
//        entered=false;
//      }
//    }
//  } else if (filteredList.isEmpty() && entered &&(pieSelected||barSelected))
//  {
//    if (query==1 && filteredList.isEmpty())
//    {
//      displayText = "";
//      String error = ("The Airport Code entered was not correct or didn't exist");
//      text(error, 160, 270);
//    }
//    if (query==2 && filteredList.isEmpty())
//    {
//      displayText = "";
//      String error = "The String entered was not in the correct Format or out of range";
//      text(error, 160, 270);
//    }
//  } else if (entered && (!pieSelected||!barSelected))
//  {
//    String error = ("Visualisation Method not selected!");
//    text(error, 240, 270);
//  }


//  //Works for a linechart instead of BarChart
//  if (query==3 && (highToLow||lowToHigh))
//  {
//    xAxisLabels = new float[]{1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
//    yAxisLabels = new float[10];
//    if (highToLow) {
//      title="Top 10 longest flights";
//    } else if (lowToHigh) {
//      title="Top 10 shortest flights";
//    }
//    for (int i = 0; i < yAxisLabels.length; i++)
//    {
//      yAxisLabels[i] = float(sortedTempDistanceList.get(i));
//    }
//    //yAxis.add(float(sortedTempDistanceList.get(0)));        // barchart showing the 10 longest routes
//    //yAxis.add(float(sortedTempDistanceList.get(1)));
//    //yAxis.add(float(sortedTempDistanceList.get(2)));
//    //yAxis.add(float(sortedTempDistanceList.get(3)));
//    //yAxis.add(float(sortedTempDistanceList.get(4)));
//    //yAxis.add(float(sortedTempDistanceList.get(5)));
//    //yAxis.add(float(sortedTempDistanceList.get(6)));
//    //yAxis.add(float(sortedTempDistanceList.get(7)));
//    //yAxis.add(float(sortedTempDistanceList.get(8)));
//    //yAxis.add(float(sortedTempDistanceList.get(9)));

//    String spaces = String.format("%30s", "");
//    String space2 = String.format("%18s", "");
//    String xAxisHeadings = filteredList.get(0).origin + " -> " + filteredList.get(0).destAirport + " " + spaces ;
//    String secondLine = "\n" + space2 + filteredList.get(1).origin + " -> " + filteredList.get(1).destAirport+ " " ;
//    xAxisHeadings += filteredList.get(2).origin + " -> " + filteredList.get(2).destAirport+ " " + spaces ;
//    secondLine += spaces + filteredList.get(3).origin + " -> " + filteredList.get(3).destAirport+ " ";
//    xAxisHeadings += filteredList.get(4).origin + " -> " + filteredList.get(4).destAirport+ " " + spaces ;
//    secondLine += spaces + filteredList.get(5).origin + " -> " + filteredList.get(5).destAirport+ " " ;
//    xAxisHeadings += filteredList.get(6).origin + " -> " + filteredList.get(6).destAirport+ " " + spaces ;
//    secondLine += spaces + filteredList.get(7).origin + " -> " + filteredList.get(7).destAirport+ " ";
//    xAxisHeadings += filteredList.get(8).origin + " -> " + filteredList.get(8).destAirport+ " " + spaces;
//    secondLine += space2+ filteredList.get(9).origin + " -> " + filteredList.get(9).destAirport+ " ";

//    //xAxis.add(filteredList.get(0).origin + " -> \n" + filteredList.get(0).destAirport);
//    //xAxis.add(filteredList.get(1).origin + " -> \n" + filteredList.get(1).destAirport);
//    //xAxis.add(filteredList.get(2).origin + " -> \n" + filteredList.get(2).destAirport);
//    //xAxis.add(filteredList.get(3).origin + " -> \n" + filteredList.get(3).destAirport);
//    //xAxis.add(filteredList.get(4).origin + " -> \n" + filteredList.get(4).destAirport);
//    //xAxis.add(filteredList.get(5).origin + " -> \n" + filteredList.get(5).destAirport);
//    //xAxis.add(filteredList.get(6).origin + " -> \n" + filteredList.get(6).destAirport);
//    //xAxis.add(filteredList.get(7).origin + " -> \n" + filteredList.get(7).destAirport);
//    //xAxis.add(filteredList.get(8).origin + " -> \n" + filteredList.get(8).destAirport);
//    //xAxis.add(filteredList.get(9).origin + " -> \n" + filteredList.get(9).destAirport);

//    lineChart = new LineChart(lineChartParent, title, xAxisHeadings, secondLine, xAxisLabels, yAxisLabels, returnWidget);
//    lineChart.drawLineChart();
//    //myChart = new drawBarChart(yAxis, xAxis, title, subtitle, barchart, returnWidget);
//    //myChart.draw();
//  }

//  if (map)
//  {
//    mapScreen.draw();
//    mousePos();
//    textFont(mapText);
//    image(MapOfUS, 30, 20, 850, 550);
//  }
//}

///**
// * Returns an arrayList of flights in which the variable in a flight object
// * corresponding to a particular query matches the string inputted by the user
// * and adds that flight to a new arrayList , filteredList.
// *
// * @ param String search       the String inputted by the user on the query screen
// * @ return                    flight ArrayList FilteredList
// */
//ArrayList<Flight> filter(String search)
//{
//  if (query==1)
//  {
//    filteredList = airportFilter(table, "ORIGIN", search);
//  }
//  if (query==2)
//  {
//    if (search.length() == 10)
//    {
//      String date[] = search.split("/");
//      int month = Integer.parseInt(date[0]);
//      int year = Integer.parseInt(date[2]);
//      if (month == 1 && year == 2022)
//      {
//        int day = Integer.parseInt(date[1]);
//        search = Integer.toString(day);
//        println(search);
//        filteredList = airportFilter(table, "FL_DATE", search.toUpperCase());
//      }
//    }
//  }
//  if (query==3)
//  {
//    for (int i=0; i<=flightList.size()-1; i++)
//    {
//      tempDistanceList.add(flightList.get(i).distance);
//    }

//    if (highToLow&&!lowToHigh) {
//      Collections.sort(tempDistanceList, Collections.reverseOrder());
//    } else if (lowToHigh&&!highToLow) {
//      Collections.sort(tempDistanceList);
//    }

//    sortedTempDistanceList.add(tempDistanceList.get(0));
//    counter=0;

//    for (int i=1; i<=tempDistanceList.size()-1; i++)
//    {
//      if (!sortedTempDistanceList.contains(tempDistanceList.get(i)))
//      {
//        sortedTempDistanceList.add(tempDistanceList.get(i));
//        counter=counter+1;
//      }
//    }

//    for (int j=0; j<=sortedTempDistanceList.size()-1; j++)
//    {
//      for (int i=0; i<=flightList.size()-1; i++) {
//        if (sortedTempDistanceList.get(j)==flightList.get(i).distance) {
//          if (filteredList.size()==0) {
//            filteredList.add(flightList.get(i));
//          } else if (filteredList.size()>0) {
//            if (flightList.get(i).distance!=filteredList.get(filteredList.size()-1).distance) {
//              filteredList.add(flightList.get(i));
//            }
//          }
//        }
//      }
//    }
//  }
//  for (int i = 0; i <filteredList.size(); i++)
//  {
//    println(filteredList.get(i).origin);
//  }
//  return filteredList;
//}

///**
// * Creates an arrayList of class Flight
// *
// * A Flight object is created from each table row of the flight csv dataset
// * This method is called once in set up and requires that a csv is in
// * the same folder as the sketch
// */
//void readFullFlight()
//{
//  table = loadTable("flights_full.csv", "header");
//  flightCodes = new String[table.getRowCount()]; 
//  int i = 1; 
//  for (TableRow row : table.rows())
//  {
//    flightDate = row.getString("FL_DATE");
//    String[] dates = flightDate.split("/");
//    flightDate = dates[1];
//    IATA = row.getString("MKT_CARRIER");
//    flightNum = row.getInt("MKT_CARRIER_FL_NUM");
//    oAirport = row.getString("ORIGIN");
//    oCity = row.getString("ORIGIN_CITY_NAME");
//    oState = row.getString("ORIGIN_STATE_ABR");
//    flightCodes[i-1] = oState;
//    oWAC = row.getInt("ORIGIN_WAC");
//    dAirport = row.getString("DEST");
//    dCity = row.getString("DEST_CITY_NAME");
//    dState = row.getString("DEST_STATE_ABR");
//    dWAC = row.getInt("DEST_WAC");
//    estDT = row.getInt("CRS_DEP_TIME");
//    actualDT = row.getInt("DEP_TIME");
//    estAT = row.getInt("CRS_ARR_TIME");
//    actualAT = row.getInt("ARR_TIME");
//    if (row.getInt("CANCELLED") == 1)
//      cancel = true;
//    else cancel = false;

//    if (row.getInt("DIVERTED")==1)
//      divert = true;
//    else divert = false;
//    distanceMiles = row.getInt("DISTANCE");

//    flightList.add(new Flight(flightDate, IATA, flightNum, oAirport, oCity, oState,
//      oWAC, dAirport, dCity, dState, dWAC, estDT, actualDT, estAT, actualAT, cancel,
//      divert, distanceMiles));
//      i++; 
//  }
//}

///**
// * Returns an arrayList of flights with a certain property and collects
// * specific information of the arrayList depending on the query selected
// * by the user
// *
// * @ param table       the table with with the csv data of flights
// * @ param columnName  the header of the certain property
// * @ param searchValue the certain property (ie airport code, a specific date etc)
// * @ return            flight ArrayList
// */
//ArrayList<Flight> airportFilter(Table table, String columnName, String searchValue)
//{
//  searchValue = searchValue.trim();
//  searchValue = searchValue.toUpperCase();
//  int[] filterArray = table.matchRowIndices(searchValue, columnName);

//  if (filterArray.length!=0)
//  {
//    for (int i = 0; i< filterArray.length; i++)
//    {
//      TableRow row = table.getRow(filterArray[i]);
//      flightDate = row.getString("FL_DATE");
//      IATA = row.getString("MKT_CARRIER");
//      flightNum = row.getInt("MKT_CARRIER_FL_NUM");
//      oAirport = row.getString("ORIGIN");
//      oCity = row.getString("ORIGIN_CITY_NAME");
//      oState = row.getString("ORIGIN_STATE_ABR");
//      oWAC = row.getInt("ORIGIN_WAC");
//      dAirport = row.getString("DEST");
//      dCity = row.getString("DEST_CITY_NAME");
//      dState = row.getString("DEST_STATE_ABR");
//      dWAC = row.getInt("DEST_WAC");
//      estDT = row.getInt("CRS_DEP_TIME");
//      actualDT = row.getInt("DEP_TIME");
//      estAT = row.getInt("CRS_ARR_TIME");
//      actualAT = row.getInt("ARR_TIME");
//      if (row.getInt("CANCELLED") == 1)
//        cancel = true;
//      else cancel = false;

//      if (row.getInt("DIVERTED")==1)
//        divert = true;
//      else divert = false;
//      distanceMiles = row.getInt("DISTANCE");

//      filteredList.add(new Flight(flightDate, IATA, flightNum, oAirport, oCity, oState,
//        oWAC, dAirport, dCity, dState, dWAC, estDT, actualDT, estAT, actualAT, cancel,
//        divert, distanceMiles));
//    }
//  }
//  if (query==1)
//  {
//    for (int i = 0; i < filteredList.size(); i++)
//    {
//      if (flightList.get(i).CRSDepTime == flightList.get(i).depTime) {
//        onTimeFlights+=1;
//        println("O" + onTimeFlights );
//      }
//      if (flightList.get(i).CRSDepTime>flightList.get(i).depTime) {
//        earlyDepFlights+=1;
//        println("E"+ earlyDepFlights);
//      }
//      if (flightList.get(i).CRSDepTime<flightList.get(i).depTime) {
//        lateDepFlights+=1;
//        println("L" + lateDepFlights);
//      }
//    }
//  }
//  if (query==2)
//  {
//    for (int i = 0; i < filteredList.size(); i++)
//    {
//      if (flightList.get(i).cancelled)
//      {
//        numberOfCancelledFlights+=1;
//        println("Cancelled");
//      }
//      if (flightList.get(i).diverted)
//      {
//        numberOfDivertedFlights+=1;
//      }
//      numberOfFlights=filteredList.size()-numberOfCancelledFlights-numberOfDivertedFlights;
//      println(numberOfFlights);
//    }
//  }
//  println("Filter Completed");
//  return filteredList;
//}

////void printArray(ArrayList<Flight> flightList)
////{
////  for (int i=0; i<flightList.size(); i++)
////  {
////    String flightListString = (flightList.get(i).flightDate + flightList.get(i).IATA + flightList.get(i).flightNumber + flightList.get(i).origin + flightList.get(i).originCityName +
////      flightList.get(i).originState + flightList.get(i).originWAC + flightList.get(i).destAirport + flightList.get(i).destCity + flightList.get(i).destState +
////      flightList.get(i).destWAC + flightList.get(i).CRSDepTime + flightList.get(i).depTime + flightList.get(i).CRSArrTime +
////      flightList.get(i).arrTime + flightList.get(i).cancelled + flightList.get(i).diverted + flightList.get(i).distance);

////    println(flightListString);
////  }
////}

///**
// * This method is called when a key is pressed (when the user is required to input a value)
// * The text entered by the user is then saved as a String and passed to the filter()
// * method as the parameter "search"
// *
// */
//void keyPressed() {
//  if (key!=BACKSPACE)
//  {
//    text+=key;
//    displayText+=key;
//    if (key == ENTER && text.length() != 0)      //Cora 23/03 Changed it so that when the enter key is pressed and the text entered is not nothing //
//    {
//      subtitle += displayText.toUpperCase();
//      entered = true;
//      displayText = "";
//      if (query==2)
//      {
//        text=text.substring(0, text.length()-1);
//        //text = text + " 12:00:00 AM";
//        //text = text+ " 00:00";
//      }
//      filter(text);
//      println("Exited filter");
//    }
//  }
//  if (key==BACKSPACE)
//  {
//    if (text.length()>0)
//    {
//      text=text.substring(0, text.length()-1);
//      displayText=displayText.substring(0, displayText.length()-1);
//    }
//  }
//}

///**
// * This method is called when mouse is pressed
// * The condition triggered will depend on the current screen that the user is on
// * If there are multiple buttons on one screen, a switch statement is used for
// * each separate widget
// */
//void mousePressed()
//{
//  int event;
//  loop();

//  if (welcome) {
//    event = continueWidget.getEvent(mouseX, mouseY);
//    if (event==EVENT_WELCOME) {
//      welcome = false;
//      main = true;
//    }
//  }

//  if (main)
//  {
//    for (int i = 0; i<mainMenu.screenWidget.size(); i++) {
//      Widget aWidget = (Widget) mainMenu.screenWidget.get(i);
//      event = aWidget.getEvent(mouseX, mouseY);
//      switch(event) {
//      case EVENT_BUTTON1:
//        println("Airport pressed"); //PiChart
//        query = 1;
//        airport = true;
//        main = false;
//        break;
//      case EVENT_BUTTON2:
//        println("Dates Pressed"); //BarChart
//        query = 2;
//        dates = true;
//        main = false;
//        break;
//      case EVENT_BUTTON3:
//        println("Distance Pressed"); //LineChart
//        query = 3;
//        distanceS = true;
//        main = false;
//        break;
//      case EVENT_BUTTON4:
//        println("Map Pressed"); //Map
//        //To delay the map drawing and hence triggering the label to appear when
//        //the map button is just pressed
//        MyTimerTask task = new MyTimerTask();
//        timer.schedule(task, 10);
//        //waits 0.1ms
//        main = false;
//      }
//    }
//  }

//  if (!main)
//  {
//    if (airport) {
//      for (int i = 0; i<airportScreen.screenWidget.size(); i++) {
//        Widget aWidget = (Widget) airportScreen.screenWidget.get(i);
//        event = aWidget.getEvent(mouseX, mouseY);
//        switch(event) {
//        case EVENT_RETURN:
//          clearScreen();
//          println("Menu Pressed");
//          break;
//        case EVENT_BARCHART:
//          barSelected = true;
//          println("bar selected");
//          break;
//        case EVENT_PIECHART:
//          pieSelected = true;
//          println("pie selected");
//          break;
//        }
//      }
//    }
//    if (dates) {
//      for (int i = 0; i<datesScreen.screenWidget.size(); i++) {
//        Widget aWidget = (Widget) datesScreen.screenWidget.get(i);
//        event = aWidget.getEvent(mouseX, mouseY);
//        switch(event) {
//        case EVENT_RETURN:
//          clearScreen();
//          println("Menu Pressed");
//          break;
//        case EVENT_BARCHART:
//          barSelected = true;
//          println("bar selected");
//          break;
//        case EVENT_PIECHART:
//          pieSelected = true;
//          println("pie selected");
//          break;
//        }
//      }
//    }
//    if (distanceS) {
//      for (int i = 0; i<distanceScreen.screenWidget.size(); i++) {
//        Widget aWidget = (Widget) distanceScreen.screenWidget.get(i);
//        event = aWidget.getEvent(mouseX, mouseY);
//        switch(event) {
//        case EVENT_RETURN:
//          clearScreen();
//          println("Menu Pressed");
//          break;
//        case EVENT_HIGHTOLOW:
//          query = 3;
//          highToLow = true;
//          filter(text);
//          println("high to low");
//          break;
//        case EVENT_LOWTOHIGH:
//          query = 3;
//          lowToHigh = true;
//          filter(text);
//          println("low to high");
//          break;
//        }
//      }
//    }
//    if (map)
//    {
//      for (int i = 0; i<mapScreen.screenWidget.size(); i++) {
//        Widget aWidget = (Widget) mapScreen.screenWidget.get(i);
//        event = aWidget.getEvent(mouseX, mouseY);
//        switch(event) {
//        case EVENT_RETURN:
//          clearScreen();
//          println("Menu Pressed");
//          break;
//        default:
//          for (int x = 0; x<stateList.size(); x++)
//          {
//            stateList.get(x).checkMousePosition(mouseX, mouseY, flightCodes);
//            println(mouseX, mouseY);
//          }
//          break;
//        }
//      }
//    }
//  }
//}

///** 
// * This method is called once in set up to read in the txt of state data.
// * This txt includes the full name of each US state, its state code, and 
// * its minimum X,Y and maximum X,Y co-ordinates
// * 
// * Each row of the txt is parsed into Strings and the data are stored in their 
// * corresponding arrays. Each row of the txt is then stored as an object of class State. 
// * 
// */
//void readData()
//{
//  String[] lines = loadStrings("StateswithXYedit.txt");

//  minX = new float[totalCount];
//  minY = new float[totalCount];
//  maxX = new float[totalCount];
//  maxY = new float[totalCount];
//  stateName = new String[totalCount];
//  stateCode = new String[totalCount];
//  stateList = new ArrayList<State>();

//  for (int i = 1; i < 52; i++)
//  {
//    String pieces[] = split(lines[i], ",");
//    stateName[i-1] = pieces[0];
//    stateCode[i-1] = pieces[1];

//    minX[i-1] = float(pieces[2]);
//    maxX[i-1] = float(pieces[3]);
//    minY[i-1] = float(pieces[4]);
//    maxY[i-1] = float(pieces[5]);

//    stateList.add(new State(stateName[i-1], stateCode[i-1], minX[i-1], maxX[i-1], minY[i-1], maxY[i-1]));
//  }
//}
///** 
// * This method is called once in set up to read in the csv of flights. Only the stateCode
// * of each flight is stored into a separate 
// * Each row of the txt is parsed into Strings and the data are stored in their 
// * corresponding arrays. Each row of the txt is then stored as an object of class State. 
// * 
// */
// //Cora 04/14 removed this method as found more efficient way of using it 
////Creates a String array with only the stateCodes of each flight
////void readFlights()
////{
////  //flightCodes = new String[flightList.size()];
////  //for (int i = 1 ; i < flightCodes.length ; i++)
////  //{
////  //  flightCodes[i-1] = flightList.get(i).originState;
////  //  println(flightCodes[i-1]);
////  //}
////  String[] lines = loadStrings("flights_full.csv");
////  flightCodes = new String[lines.length];

////  for (int i = 1; i < lines.length; i++)
////  {
////    String pieces[] = split(lines[i], ",");
////    flightCodes[i-1] = pieces[6];
////  }
////}

//// Stops drawing the map label when the mouse is released
//void mouseReleased()
//{
//  if (map)
//    loop();
//}

///**
// * This method is called when the mouse is moved and changes the colour of the 
// * widget border if the user is on one. 
// * The condition triggered will depend on the current screen that the user is on
// * If there are multiple buttons on one screen, a switch statement is used for
// * each separate widget.
// */
//// Cora 11.04
//void mousePos()
//{
//  int event;
//  if (main)
//  {
//    for (int i = 0; i<mainMenu.screenWidget.size(); i++) {
//      Widget aWidget = (Widget) mainMenu.screenWidget.get(i);
//      event = aWidget.getEvent(mouseX, mouseY);
//      switch(event) {
//      case EVENT_BUTTON1:
//        aWidget.changeBorderColor();
//        image(airportInfo, 600, 100);  // Ava 12.04 added images with information about each query to be displayed when mouse is over that query.
//        break;
//      case EVENT_BUTTON2:
//        aWidget.changeBorderColor();
//        image(dateInfo, 80, 450);
//        break;
//      case EVENT_BUTTON3:
//        aWidget.changeBorderColor();
//        image(distanceInfo, 600, 450);
//        break;
//      case EVENT_BUTTON4:
//        aWidget.changeBorderColor();
//        image(mapInfo, 80, 100);
//        break;
//      }
//    }
//  }

//  if (!main)
//  {
//    if (welcome)
//    {
//      for (int i = 0; i<welcomeScreen.screenWidget.size(); i++) {
//        Widget aWidget = (Widget) welcomeScreen.screenWidget.get(i);
//        event = aWidget.getEvent(mouseX, mouseY);
//        switch(event) {
//        case EVENT_WELCOME:
//          aWidget.changeBorderColor();
//          break;
//        }
//      }
//    }

//    if (airport||dates)
//    {
//      for (int i = 0; i<airportScreen.screenWidget.size(); i++) {
//        Widget aWidget = (Widget) airportScreen.screenWidget.get(i);
//        event = aWidget.getEvent(mouseX, mouseY);
//        switch(event) {
//        case EVENT_RETURN:
//          aWidget.changeBorderColor();
//          break;
//        case EVENT_BARCHART:
//          aWidget.changeBorderColor();
//          break;
//        case EVENT_PIECHART:
//          aWidget.changeBorderColor();
//          break;
//        }
//      }
//    }
//    if (distanceS)
//    {
//      for (int i = 0; i<distanceScreen.screenWidget.size(); i++) {
//        Widget aWidget = (Widget) distanceScreen.screenWidget.get(i);
//        event = aWidget.getEvent(mouseX, mouseY);
//        switch(event) {
//        case EVENT_RETURN:
//          aWidget.changeBorderColor();
//          break;
//        case EVENT_HIGHTOLOW:
//          aWidget.changeBorderColor();
//          break;
//        case EVENT_LOWTOHIGH:
//          aWidget.changeBorderColor();
//          break;
//        }
//      }
//    }
//    if (map)
//    {
//      for (int i = 0; i<mapScreen.screenWidget.size(); i++) {
//        Widget aWidget = (Widget) mapScreen.screenWidget.get(i);
//        event = aWidget.getEvent(mouseX, mouseY);
//        switch(event) {
//        case EVENT_RETURN:
//          aWidget.changeBorderColor();
//          break;
//        }
//      }
//    }
//  }
//}

//Timer timer = new Timer();
///** 
//* This method is only called when the map button is pressed to delay the drawing of the 
//* map. This was to prevent the pop up of state labels when the map button is just pressed.
//*/
//class MyTimerTask extends TimerTask {
//  public void run() {
//    map = true;
//    println("Timer task executed!");
//  }
//}

///** 
//* This method is called after the Menu Button is pressed
//* It's purpose is to set all previous conditions to false and main menu to true, 
//* it also clears all arrayLists used for the visual representation 
//*/
//void clearScreen()
//{
//  textFont(myText);
//  filteredList.clear();
//  xAxis.clear();
//  yAxis.clear();
//  subtitle = "";
//  entered = false;
//  text="";
//  displayText="";
//  query = 0;
//  println("Menu Pressed");
//  main = true;
//  distanceS = false;
//  airport = false;
//  dates = false;
//  barSelected = false;
//  pieSelected = false;
//  highToLow = false;
//  lowToHigh = false;
//  map = false;
//  onTimeFlights = 0;
//  lateDepFlights = 0;
//  earlyDepFlights = 0;
//  numberOfFlights=0;
//  numberOfCancelledFlights= 0;
//  numberOfDivertedFlights = 0;
//  tempDistanceList.clear();
//  sortedTempDistanceList.clear();
//  airportScreen.removeList();
//  noList = true;
//}
