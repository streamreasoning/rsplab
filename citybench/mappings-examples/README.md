
# How to test these mapping files

- set up [postgres](https://hub.docker.com/_/postgres/) quest
- Using for instance [csvkit](http://csvkit.readthedocs.io/en/1.0.1/) load in postgres the following citybench streams:
    + AarhusPollutionData158324
    + AarhusWeatherData0
    + AarhusParkingDataBRUUNS
    + AarhusTrafficData158324

- Set up a version of quest
- change in the mapping the connection string according to the IP of the machine where you load postgres
- Load in quest the citybench.owl file and the .obda file you want to as mapping


