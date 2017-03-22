
#RSP Lab Streamer 

This repository contains the configurations, the data and the queries for each benchmark included in the RSP Lab suite.

Specifically, for each benchmark it contains:  
    - A domain description
    - A description of the data, i.e. Ontologies and Streams or generators
    - The queries as they are provided and also translated in RSL-QL syntax
    - A set of scripts used to elaborate on the benchmark data and made them available for the RSP Lab suite

## Included Benchmarks:

- [Citybench](https://github.com/riccardotommasini/rsplab-benchmarks/blob/master/citybench/citybench.md)


## Build

    Each streaming endpoint relies on the existence of a (virtual) RDF endpoint and a triplewave instance

    the RDF endpoint can be either a fuseki or quest one.
        fuseki:
            config.ttl that exposes at least a query endpoint and load the data (example in folder fuseki)
        quest: 
            requires postgres or mysql running with the relational data loaded
            postgress loading script available in quest/postgres 


### Form DockerHub

#Run
