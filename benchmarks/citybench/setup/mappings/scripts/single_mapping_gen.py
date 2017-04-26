from SPARQLWrapper import SPARQLWrapper, JSON
from string import Template
from sys import argv

stream = argv[1].replace("csv","").replace(".stream","")

mapping_file = open( argv[2] )
mapping_tmpl = Template( mapping_file.read() )
mappings = {"stream":stream, "next":'$MappingDeclaration'}

res = mapping_tmpl.substitute(mappings)

text_file = open(argv[3], "a")
text_file.write(res)
text_file.close()


#print ("Finished")doc
##USAGE python <stream name> <stream-mapping-template> <output-file>