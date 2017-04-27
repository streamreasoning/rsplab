FROM openjdk:6
ADD ./generator ./generator


ADD run.sh generator/run.sh
RUN chmod u+x generator/run.sh

WORKDIR generator/

ENTRYPOINT ["./run.sh"]
CMD ["--local"]