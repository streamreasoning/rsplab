
# How to test these mapping files

## Postgres

Set up [postgres](https://hub.docker.com/_/postgres/)

- available dumps for postgres:
    + initdb.sql contains
        + AarhusPollutionData158324
        + AarhusWeatherData0
        + AarhusParkingDataBRUUNS
        + AarhusTrafficData158324
    + experiments.sql that contains
        * AarhusPollutionData201399
        * AarhusPollutionData184892
        * AarhusPollutionData182955
        * AarhusPollutionData158505
        * AarhusPollutionData206502
        * AarhusPollutionData179093
        * AarhusPollutionData195843
        * AarhusPollutionData206237 
        * AarhusPollutionData195204 
        * AarhusPollutionData204300
        * AarhusParkingDataSKOLEBAKKEN
        * AarhusParkingDataKALKVAERKSVEJ
        * AarhusTrafficData158505
        * AarhusTrafficData182955
        * AarhusTrafficData186979 
        * AarhusTrafficData192707
        * AarhusWeatherData0
        * UserLocationService (no mappings yet)

## Quest

Mappings are located in folder obda:
    - /initdb
    - /experiments

All assumed a link to postgress database


The csvsql can be used to add data to the database --db postgresql://root:root@postgres:5432/initdb --inser --encoding ASCII --delimiter , --quotechar \' --blanks --no-constraints --no-inference  data/AarhusTrafficData158324.stream