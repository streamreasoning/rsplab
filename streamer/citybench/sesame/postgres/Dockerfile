FROM postgres:latest

ENV POSTGRES_DB=initdb
ENV POSTGRES_USER=root
ENV POSTGRES_PASSWORD=root

ADD /experiments.sql /docker-entrypoint-initdb.d