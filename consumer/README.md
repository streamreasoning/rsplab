to use build.py, start and stop scripts export ENGINE="csparql" or "cqels"
``` 
    docker build -t csparql 
```
[comment]: <> (Current version of fuseki is 2.3.1 consider update to 2.4)

Passing files:
    - config.properties configure rsp-services ports
    - log4j.properties configure rsp-services logs
``` 
    docker run -i --name csparqlrunning -p 8175:8175 csparql 
```
