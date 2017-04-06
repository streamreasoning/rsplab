FROM streamreasoning/triplewave:rsplab

ADD run.sh ./run.sh
RUN chmod u+x run.sh

RUN rm -rf rdf/sgraph/*
ADD sgraph/* rdf/sgraph/*
RUN ls rdf/sgraph

EXPOSE 4000-4100

ENTRYPOINT ["./run.sh"]
CMD ["examples/config.properties"] 
