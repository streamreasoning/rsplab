PREFIX afn: <http://jena.hpl.hp.com/ARQ/function#>
PREFIX prov: <http://www.w3.org/ns/prov#> 
PREFIX obs: <http://knoesis.wright.edu/ssw/ont/sensor-observation.owl#>
PREFIX dc: <http://purl.org/dc/elements/1.1/>

WITH <http://example.org/sgraph>
INSERT{
  ?g prov:generatedAt ?ts ; <http://example.org/hasKey> ?key
}
WHERE {
  GRAPH <http://example/input>{
  ?key dc:created ?ts .
  BIND (iri(concat("[graphname]/",afn:localname(?key))) AS ?g)
 } 
}