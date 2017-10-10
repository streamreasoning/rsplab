FROM streamreasoning/triplewave:rsplab

ADD ./wait-for-it.sh ./wait-for-it.sh
RUN chmod u+x wait-for-it.sh

ADD run.sh ./run.sh
RUN chmod u+x run.sh

RUN rm -rf rdf/sgraph
RUN rm -rf config/*

ADD sgraph rdf/sgraph
RUN ls rdf/sgraph

ADD stream rdf/stream
RUN ls rdf/stream

EXPOSE 4000-4100

ENTRYPOINT ["./run.sh"]
CMD ["examples/config.properties"] 
