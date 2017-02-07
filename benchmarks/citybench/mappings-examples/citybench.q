[QueryGroup="citybench"] @collection [[
[QueryItem="pattern"]
PREFIX : <http://www.streamreasoning.org/ontologies/rsplab/citybench.owl#>
PREFIX ct: <http://www.insight-centre.org/citytraffic#>
PREFIX ssn: <http://purl.oclc.org/NET/ssnx/ssn#>

SELECT *
where
{ ?s a ssn:Observation ; :eventTime ?t ; ssn:observedProperty ?property ; ssn:observedBy ?sensor ; ct:hasValue ?v  .}
LIMIT 10
]]
