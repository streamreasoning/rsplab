[QueryItem="Obs1"]
PREFIX ssn: <http://purl.oclc.org/NET/ssnx/ssn#>
SELECT *
WHERE { ?s a ssn:Observation ; ?p ?o .}
