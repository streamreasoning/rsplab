---
title: ISWC 2017 Demo
permalink: demo
---


# ISWC 2017 RSPLab Demo (SUBMITTED!)

In this demo we show all the workflow necessary for deploying and executing a RSP benchmark using RSPLab. In particular we will present the following steps:

1) Deployment and configuration of RDF Streams: we show how to deploy and configure the **Streamer** component in order to stream the included datasets.
2) Deployment and configuration of RSP Engines: we show how to deploy and configure the **Consumer tier**, with particular focus on the C-SPARQL and CQELS engines.
3) Continuous query of the streams and collection of the results: we show how to issue continuous queries to the streams using the programming interface. We use the included [Python library](https://github.com/streamreasoning/rsplib) that allow to fully control all the tiers included in RSPLab. In particular it allows to 
  - create and launch experiments following the structure described in [1],
  - dynamically add and remove graphs and streams to a RSP engine,
  - dynamically register and unregister queries and observers to a RSP engine, and finally
  - publish the results following the linked data principles. 
 
The goal of this demostration is to explain how to use RSPlab effectively to observe changes in the engine dynamics. Indeed, 
we intend to exploit the assisted data visualization tools to show how each of the aforementioned steps impact on the systems performance.
 
