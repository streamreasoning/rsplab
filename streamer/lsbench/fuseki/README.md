``` 
    docker build -t fuseki2 
```
[comment]: <> (Current version of fuseki is 2.3.1 consider update to 2.4)

Passing files:
    - config.ttl specifying how the server should be setup [expected]
    - data.ttl containing the data to upload [expected]
    
``` 
    docker run -i --name fuseki -p 3030:3030 fuseki2 
```

or

``` 
    docker run -i --name fuseki -p 3030:3030 fuseki2 <argument>
    e.g.  docker run -i --name fuseki -p 3030:3030 fuseki2 --update --mem /ds
```
