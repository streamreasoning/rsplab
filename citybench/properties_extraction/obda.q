PREFIX ses: <http://www.insight-centre.org/dataset/SampleEventService#>
PREFIX owl: <http://www.w3.org/2002/07/owl#>
PREFIX ssn: <http://purl.oclc.org/NET/ssnx/ssn#>
SELECT  ?type ?prop  
WHERE { $stream ssn:observes ?prop .
		?prop a ?type
		FILTER(?type != owl:NamedIndividual) }
GROUP BY ?type ?prop