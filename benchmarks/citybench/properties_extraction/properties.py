from SPARQLWrapper import SPARQLWrapper, JSON
from sys import argv
import csv

q = open( argv[1] ).read()

sparql = SPARQLWrapper("http://192.168.99.100:8080/openrdf-sesame/repositories/SensorRepository")
sparql.setQuery(q)
sparql.setReturnFormat(JSON)
results = sparql.query().convert()

fieldnames = [v for v in results['head']['vars']]

with open(argv[1].replace('.q','.csv'), 'wb') as f:
    writer = csv.DictWriter(f, delimiter=',', fieldnames=fieldnames)
    writer.writeheader()

    for r in results["results"]["bindings"]:
    	row = {v:r[v]['value'].replace("http://www.insight-centre.org/dataset/SampleEventService#", "").replace("http://www.insight-centre.org/citytraffic#","") for v in fieldnames}
    	writer.writerow(row)


#print ("Finished")doc
##USAGE python <stream name> <query-template> <stream-mapping-template> <output-file>