PREFIX ces:<http://www.insight-centre.org/ces#>
PREFIX owl: <http://www.w3.org/2002/07/owl#>
PREFIX owlssc: <http://www.daml.org/services/owl-s/1.2/ServiceCategory.owl#>
PREFIX owls: <http://www.daml.org/services/owl-s/1.2/Service.owl#>
prefix ssn: <http://purl.oclc.org/NET/ssnx/ssn#>
prefix ses: <http://www.insight-centre.org/dataset/SampleEventService#>

select distinct  ?service ?property ?property_class ?property_type
where {

?service ssn:observes ?property ; owls:presents ?profile. 
?profile owlssc:serviceCategory ?service_cat .
?service_cat owlssc:serviceCategoryName ?property_type .
?property rdf:type ?property_class. ?property ssn:isPropertyOf ?z . 
}