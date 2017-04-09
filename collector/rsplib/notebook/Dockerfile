FROM ipython/ipython:3.x

MAINTAINER IPython Project <ipython-dev@scipy.org>

VOLUME /notebooks
WORKDIR /notebooks

EXPOSE 8888

ADD notebook.sh /

RUN ls
CMD ["/notebook.sh"]
