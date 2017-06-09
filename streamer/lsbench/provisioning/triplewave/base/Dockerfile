FROM streamreasoning/triplewave:rsplab

ADD run.sh ./run.sh
RUN chmod u+x run.sh

# ADD start.sh ./start.sh
# RUN chmod u+x start.sh

RUN rm -rf config/*

ADD sgraph/post.sgraph rdf/sgraph/post.sgraph

ADD examples/config.properties examples/config.properties

ADD insertQueryPhoto.q rdf/insertQueryPhoto.q
ADD insertQueryGPS.q rdf/insertQueryGPS.q
ADD insertQueryPost.q rdf/insertQueryPost.q

ADD insertNewTriple.q rdf/insertNewTriple.q

RUN ls rdf

EXPOSE 4000-4100

ENTRYPOINT ["./run.sh"]
CMD ["examples/config.properties"] 
