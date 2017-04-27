FROM openjdk:8

WORKDIR /usr/local

ENV JETTY_HOME /usr/local/jetty8

COPY ontop-jetty.tar ./ontop-jetty.tar

RUN tar -zxf ontop-jetty.tar

WORKDIR $JETTY_HOME

ADD lib/postgres.jar $JETTY_HOME/lib/ext/postgres.jar
ADD lib/mysql.jar $JETTY_HOME/lib/ext/mysql.jar
ADD obda/  $JETTY_HOME/obda

ADD start.sh start.sh
RUN chmod u+x start.sh

EXPOSE 8080
EXPOSE 8483

ENTRYPOINT ["./start.sh"]