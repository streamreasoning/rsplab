FROM streamreasoning/triplewave:rsplab

ADD run.sh ./run.sh

RUN chmod u+x run.sh

EXPOSE 4000-4100

ENTRYPOINT ["./run.sh"]
CMD ["examples/config.properties"] 