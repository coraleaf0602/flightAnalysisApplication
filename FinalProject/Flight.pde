class Flight
//class where its objects is one line of the text data 
{
  String flightDate;
  String IATA;
  int flightNumber;
  String origin;
  String originCityName; //origin+originCityName;
  String originState; //stateCode
  int originWAC; //World Area Code 
  String destAirport; //Destination Airport 
  String destCity; //destAirport + destCityName
  String destState; //stateCode
  int destWAC; //World Area Code
  int CRSDepTime; //scheduled departure time (hhmm)
  int depTime; //actual departure time (hhmm) 
  int CRSArrTime;
  int arrTime; 
  boolean cancelled;
  boolean diverted; 
  int distance; //distance between airport in miles 
  
  Flight(String flightDat, String IATAentered, int flightNo, String originAirport, 
  String oCity, String oState, int oWAC, String dAirport, String dCity, String dState, 
  int dWAC, int estDT, int actualDT, int estAT, int actualAT, boolean cancel, 
  boolean divert, int distanceInMiles)
  {
    flightDate = flightDat;
    IATA = IATAentered; 
    flightNumber = flightNo;
    origin = originAirport; 
    originCityName = oCity; 
    originState = oState; 
    originWAC = oWAC;
    destAirport = dAirport; 
    destCity = dCity; 
    destState = dState; 
    destWAC = dWAC; 
    CRSDepTime = estDT; 
    depTime = actualDT; 
    CRSArrTime = estAT;
    arrTime = actualAT; 
    cancelled = cancel; 
    diverted = divert; 
    distance = distanceInMiles; 
  }
  int estDepartureHour = CRSDepTime / 100;
  int estDepartureMinutes = CRSDepTime % 100;
  int estDepartureTimeInMinutes = (estDepartureHour * 60) + estDepartureMinutes;
  int actualDepartureHour = depTime / 100;
  int actualDepartureMinutes = depTime % 100;
  int actualDepartureTimeInMinutes = (actualDepartureHour * 60) + actualDepartureMinutes;
  int latenessDeparting = actualDepartureTimeInMinutes - estDepartureTimeInMinutes;
   
  int estArrivalHour = CRSArrTime / 100;
  int estArrivalMinutes = CRSArrTime % 100;
  int estArrivalTimeInMinutes = (estArrivalHour * 60) + estArrivalMinutes;
  int actualArrivalHour = arrTime / 100;
  int actualArrivalMinutes = arrTime % 100;
  int actualArrivalTimeInMinutes = (actualArrivalHour * 60) + actualArrivalMinutes;
  int latenessArriving = actualArrivalTimeInMinutes - estArrivalTimeInMinutes;
}
