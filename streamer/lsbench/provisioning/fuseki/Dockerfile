FROM openjdk:8

ADD fuseki/ fuseki
ADD PhotoConfig.ttl fuseki/run/configuration/PhotoConfig.ttl
ADD PostConfig.ttl fuseki/run/configuration/PostConfig.ttl
ADD GPSConfig.ttl fuseki/run/configuration/GPSConfig.ttl

ADD ./photo.ttl fuseki/photo.ttl
ADD ./post.ttl fuseki/post.ttl
ADD ./gps.ttl fuseki/gps.ttl

WORKDIR fuseki

RUN chmod u+x start.sh
EXPOSE 3030

ENTRYPOINT ["./start.sh"]