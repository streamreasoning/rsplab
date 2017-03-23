
from string import Template
from sys import argv


host = argv[1]
base_port = int(argv[2])
base_ws_port = int(argv[3])
base_url = argv[4]
template = argv[5]
mapping_file = open( template )
mapping_tmpl = Template( mapping_file.read() )


pollution=["AarhusPollutionData201399",
           "AarhusPollutionData184892",
           "AarhusPollutionData182955",
           "AarhusPollutionData158505",
           "AarhusPollutionData206502",
           "AarhusPollutionData179093",
           "AarhusPollutionData195843",
           "AarhusPollutionData206237",
           "AarhusPollutionData195204",
           "AarhusPollutionData204300"]

parking=["AarhusParkingDataSKOLEBAKKEN",
         "AarhusParkingDataKALKVAERKSVEJ"]

traffic=["AarhusTrafficData158505",
         "AarhusTrafficData182955",
         "AarhusTrafficData186979",
         "AarhusTrafficData192707"]


for coll in ["pollution", "parking", "traffic"]:
    for s in eval(coll):
        m = { "stream":s,"stream_type":coll,
              "host":host, "port":base_port,
              "ws_loc":"primus", "ws_port":base_ws_port, 
              "base_url":base_url}
        print m
        res = mapping_tmpl.substitute(m)
        text_file = open(s+".properties", "w")
        text_file.write(res)
        text_file.close()
        base_port +=1
        base_ws_port +=1


#print ("Finished")doc
##USAGE python <stream name> <stream-mapping-template> <output-file>