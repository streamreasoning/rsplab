import time
from sys import argv
from RSPCollector import RSPCollector

url=argv[1] # ro['observer']['dataPath'], 
query=argv[2] #q['name'], 
file_path=argv[3] #root+"/"+q["result_path"]+ro['id']+"/"

print argv

print "Building RSP Collector"
r = RSPCollector(url, query, file_path, argv[5])


timeout = time.time() +  1000*60*int(argv[4])  # 5 minutes from now

try:
    while True:
        time.sleep(10)
        if time.time() > timeout:
            break
except KeyboardInterrupt:
    print 'interrupted!'
