FROM  jupyter/datascience-notebook:latest

RUN pip install --upgrade pip
RUN pip install rsplib
RUN pip install docker
RUN pip install websocket-client
#RUN pip install cryptography
RUN pip install azure
RUN pip install s3
RUN pip install altair
#RUN pip install --upgrade notebook 
# need jupyter_client >= 4.2 for sys-prefix below
RUN jupyter nbextension install --sys-prefix --py vega

RUN pip install plotly
RUN pip install rdflib
RUN pip install rdflib-jsonld
RUN pip install influxdb
RUN pip list


ENTRYPOINT ["start-notebook.sh","--NotebookApp.token=''"]
