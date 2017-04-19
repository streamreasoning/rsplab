FROM openjdk:8

ADD fuseki/ fuseki
ADD config.ttl fuseki/config.ttl
ADD data.ttl fuseki/data.ttl

WORKDIR fuseki

RUN chmod u+x start.sh
EXPOSE 3030

ENTRYPOINT ["./start.sh"]
CMD ["--config=config.ttl"]