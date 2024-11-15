create schema airline;
use airline;
CREATE TABLE flights
(
  Year INT,
  Quarter INT,
  Month INT,
  DayofMonth  INT,
  DayOfWeek INT,
  FlightDate DATE,
  Reporting_Airline STRING,
  DOT_ID_Reporting_Airline INT,
  IATA_CODE_Reporting_Airline STRING,
  Tail_Number STRING,
  Flight_Number_Reporting_Airline INT,
  OriginAirportID INT,
  OriginAirportSeqID INT,
  OriginCityMarketID INT,
  Origin STRING,
  OriginCityName STRING,
  OriginState STRING,
  OriginStateFips INT,
  OriginStateName STRING,
  OriginWac INT,
  DestAirportID INT,
  DestAirportSeqID INT,
  DestCityMarketID INT,
  Dest  STRING,
  DestCityName STRING,
  DestState STRING,
  DestStateFips INT,
  DestStateName STRING,
  DestWac INT,
  CRSDepTime INT,
  DepTime INT,
  DepDelay DOUBLE,
  DepDelayMinutes DOUBLE,
  DepDel15 DOUBLE,
  DepartureDelayGroups INT,
  DepTimeBlk STRING,
  TaxiOut DOUBLE,
  WheelsOff INT,
  WheelsOn INT,
  TaxiIn DOUBLE,
  CRSArrTime INT,
  ArrTime INT,
  ArrDelay INT,
  ArrDelayMinutes DOUBLE,
  ArrDel15 DOUBLE,
  ArrivalDelayGroups INT,
  ArrTimeBlk STRING,
  Cancelled DOUBLE,
  CancellationCode STRING,
  Diverted DOUBLE,
  CRSElapsedTime DOUBLE,
  ActualElapsedTime DOUBLE,
  AirTime DOUBLE,
  Flights DOUBLE,
  Distance DOUBLE,
  DistanceGroup INT,
  CarrierDelay INT,
  WeatherDelay INT,
  NASDelay INT,
  SecurityDelay INT,
  LateAircraftDelay INT,
  FirstDepTime STRING,
  TotalAddGTime STRING,
  LongestAddGTime STRING,
  DivAirportLandings STRING,
  DivReachedDest STRING,
  DivActualElapsedTime STRING,
  DivArrDelay STRING,
  DivDistance STRING,
  Div1Airport STRING,
  Div1AirportID STRING,
  Div1AirportSeqID STRING,
  Div1WheelsOn STRING,
  Div1TotalGTime STRING,
  Div1LongestGTime STRING,
  Div1WheelsOff STRING,
  Div1TailNum STRING,
  Div2Airport STRING,
  Div2AirportID STRING,
  Div2AirportSeqID STRING,
  Div2WheelsOn STRING,
  Div2TotalGTime STRING,
  Div2LongestGTime STRING,
  Div2WheelsOff STRING,
  Div2TailNum STRING,
  Div3Airport STRING,
  Div3AirportID STRING,
  Div3AirportSeqID STRING,
  Div3WheelsOn STRING,
  Div3TotalGTime STRING,
  Div3LongestGTime STRING,
  Div3WheelsOff STRING,
  Div3TailNum STRING,
  Div4Airport STRING,
  Div4AirportID STRING,
  Div4AirportSeqID STRING,
  Div4WheelsOn STRING,
  Div4TotalGTime STRING,
  Div4LongestGTime STRING,
  Div4WheelsOff STRING,
  Div4TailNum STRING,
  Div5Airport STRING,
  Div5AirportID STRING,
  Div5AirportSeqID STRING,
  Div5WheelsOn STRING,
  Div5TotalGTime STRING,
  Div5LongestGTime STRING,
  Div5WheelsOff STRING,
  Div5TailNum STRING
) ROW FORMAT DELIMITED FIELDS TERMINATED BY "," ESCAPED BY '\\';
LOAD DATA INPATH '/data/airlines/2024_1.csv' INTO TABLE flights;
LOAD DATA INPATH '/data/airlines/2024_2.csv' INTO TABLE flights;
LOAD DATA INPATH '/data/airlines/2024_3.csv' INTO TABLE flights;