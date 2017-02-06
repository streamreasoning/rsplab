PREFIX xsd: <http://www.w3.org/2001/XMLSchema#>
PREFIX ssn: <http://purl.oclc.org/NET/ssnx/ssn#>
PREFIX ses: <http://www.insight-centre.org/dataset/SampleEventService#>
SELECT ?sensor ?MeasureTime ?VehicleCount ?EstimatedTime ?CongestionLevel ?AvgSpeed 
WHERE { 
?sensor ssn:observes  ?MeasureTime, ?VehicleCount, ?EstimatedTime, ?CongestionLevel, ?AvgSpeed . 
?MeasureTime  a <http://www.insight-centre.org/citytraffic#MeasureTime>  .
?VehicleCount  a <http://www.insight-centre.org/citytraffic#VehicleCount> .
?EstimatedTime  a <http://www.insight-centre.org/citytraffic#EstimatedTime> . 
?CongestionLevel  a <http://www.insight-centre.org/citytraffic#CongestionLevel> .
?AvgSpeed  a <http://www.insight-centre.org/citytraffic#AvgSpeed>  .	 }
