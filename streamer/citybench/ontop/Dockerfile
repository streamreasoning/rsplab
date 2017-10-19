FROM rsplab-stream-server

ADD ./obda/experiments ./obda/experiments
ADD ./default.properties ./default.properties
ADD ./postgres.properties ./postgres.properties
ADD ./virtual-entrypoint.sh ./virtual-entrypoint.sh
RUN chmod u+x ./virtual-entrypoint.sh

ADD ./wait-for-it.sh ./wait-for-it.sh
RUN chmod u+x ./wait-for-it.sh

ENTRYPOINT ["./virtual-entrypoint.sh"]
CMD ["default.properties"]