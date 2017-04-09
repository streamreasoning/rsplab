import time, json, time, os, docker
from RSPClient import RSPClient
from sys import argv

tobserve = []
rsp = None
experiment_execution={}

def w(p, i):
    experiment_execution[p] = i
    
with open(argv[1]) as input_file:    
    experiment = json.load(input_file)


client = docker.from_env();

rsp = RSPClient(experiment['engine']['host'], experiment['engine']['port']);

experiment_execution['!Experiment'] = experiment
experiment_execution['E'] = rsp.engine()
experiment_execution['D'] = experiment['static']
experiment_execution['S'] = None
experiment_execution['Q'] = []
experiment_execution['K'] = None # save the KPIs
experiment_execution['R'] = None # save the result location

root = experiment_execution['E']['runUUID']

if not os.path.exists(root):
            os.makedirs(root)

streams=[]
for s in experiment['streams']:
    	print "Registering stream: " + str(s['name'])
    	streams.append(rsp.register_stream( s['name'], s['location'] ))

w('S',streams)

for q in experiment['queries']:
    print "Registering query " + q['name'] +" "+ str(q['repeat']) + " times."
    for i in range(0,q['repeat']):
        print rsp.register_query(q['name'], q['body'])
        for o in  q['observers']:
            print "Registering observers for "+q['name']+ " : " + o['name']
            ro = rsp.new_observer(q['name'], o['name'], o);
            if o['persist']:
                tobserve.append((q,ro));
        w('Q', rsp.queries());

pretty=json.dumps(experiment_execution, indent=4, sort_keys=True)

for (q,ro) in tobserve:
    client.containers.run("rspsink", name=ro['id']+"_collector", 
				     auto_remove=True,
				     command=[ro['observer']['dataPath'], q['name'], "./data/"+root+"/"+q["result_path"]+ro['id']+"/", str(experiment['metadata']['duration']), pretty],
            			     volumes={'resultsdata': {'bind': '/usr/src/app/data', 'mode': 'rw'}}, 
				     detach=True)

print "END"


