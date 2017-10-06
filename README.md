# RSP Lab 

[![DOI](https://zenodo.org/badge/80531774.svg)](https://zenodo.org/badge/latestdoi/80531774)

In Stream Reasoning (SR),  empirical research on RDF Stream Processing (RSP) is attracting a growing attention. 
The SR community proposed methodologies and benchmarks to investigate the RSP solution space and improve existing approaches. 
In this paper, we present RSPlab, an infrastructure that reduces the effort required to design and execute reproducible experiments as well as share their results.
RSPlab integrates two existing RSP benchmarks (LSBench and CityBench) and two RSP engines (C-SPARQL engine and CQELS).  
It provides a programmatic environment to: deploy in the cloud RDF Streams and RSP engines, interact with them using TripleWave and RSP Services, and continuously monitor their performances and collect statistics. RSPlab is released as open-source under an Apache 2.0 license.

RSP Lab aims at being the a full stack development environment for RSP Engines.
To this extent, we started by realizing a platform that will support research 

## Included Benchmarks:

- [CityBench](https://github.com/streamreasoning/rsplab/blob/master/citybench/README.md)
- [LSBench](https://github.com/riccardotommasini/rsplab/blob/master/lsbench/README.md)

- [TripleWave for RSPLab](https://github.com/streamreasoning/triplewave/tree/rsplab)

## Included RSP Engines

- CSPARQL Engine [docker image] (https://hub.docker.com/r/streamreasoning/csparql/)
- CQELS [docker image](https://hub.docker.com/r/streamreasoning/cqels/)

Information on how to set up and run existing 
experiments can be found in the [wiki](https://github.com/streamreasoning/rsplab/wiki).

## Slack Channel

Ask for support or suggest your ideas through the #rsplab channel @ [StreamReasoningSlack](https://streamreasoningslack.herokuapp.com/)

# UPDATES

- RSPLab Resource Paper accepted at ISWC 2017! [Accepted Papers](https://iswc2017.semanticweb.org/program/accepted-papers/)
- RSPLab demo details available at [rsp-lab.org/demo](http://rsp-lab.org/demo)



