from SPARQLWrapper import SPARQLWrapper, JSON
from string import Template
from sys import argv

stream = argv[1].replace("csv","").replace(".stream","")

#query_tmpl_file = open( argv[2] )
#query_tmpl = Template( query_tmpl_file.read() )
#query = query_tmpl.substitute({"stream":"ses:"+stream})

#sparql = SPARQLWrapper("http://192.168.99.100:8080/openrdf-sesame/repositories/SensorRepository")
#sparql.setQuery(query)
#sparql.setReturnFormat(JSON)
#results = sparql.query().convert()

mapping_file = open(  argv[2] )
mapping_tmpl = Template( mapping_file.read() )
mappings = {"stream":stream, "next":'$MappingDeclaration'}

#for result in results["results"]["bindings"]:
#	mappings[result["type"]["value"].replace("http://www.insight-centre.org/citytraffic#", "")]=result["prop"]["value"].replace("http://www.insight-centre.org/dataset/SampleEventService#","")


res = mapping_tmpl.substitute(mappings)

text_file = open(argv[3], "a")
text_file.write(res)
text_file.close()


#print ("Finished")doc
##USAGE python <stream name> <stream-mapping-template> <output-file>