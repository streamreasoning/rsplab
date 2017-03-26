FROM streamreasoning/triplewave:rsplab

ADD experiments ./experiments

ADD run.sh ./run.sh

RUN chmod u+x run.sh

EXPOSE 4000-4100

ENTRYPOINT ["./run.sh"]
CMD ["experiments/AarhusTrafficData182955.properties"]