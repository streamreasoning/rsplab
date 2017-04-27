
#LSBench

This benchmarks comprises synthetic streaming and static data related to social media.

Streams are generated directly in RDF using Java. We provide additional scripts that automatize the publication of the streams and the static knowledge base using Jena Fuseki 2 and TripleWave.


## Included Files:

- SocialGraph is the data generator and test driver of LSBench
-   m*.obda* format (a revised syntax for R2RML) building over some templates;
- an example of the generation and a the instruction to set up a sesame endpoint to query the data;
- the configuration to use this data with an extension of triplewave;
- the sql dump of the same csv.
