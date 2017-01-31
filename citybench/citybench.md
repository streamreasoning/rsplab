
#Citybench

This benchmarks comprises real world streaming and static data related to:

    - traffic monitoring
    - pollution (derived from traffic monitoring)
    - parking spot
    - cultural events

In the original work, streams are provided in csv and annotated in RDF using Java. We claim, that this is not the proper way to proceed, since it occupies memory while the benchmark is executed. We decided to exploit Ontology Base Data Access techniques to this extent.


## Included Files:

- Citybench data: we create a single annotation ontology starting from the different owl file provided in the benchmark;
- some scripts that allows the automatic generation of the mapping in *.obda* format (a revised syntax for R2RML) building over some templates;
- an example of the generation and a the instruction to set up a sesame endpoint to query the data;
- the configuration to use this data with an extension of triplewave;
- the sql dump of the same csv.
