FROM centos:latest
#commited in the image:
WORKDIR /app
RUN echo 'Hello World'
COPY docker-entrypoint.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/docker-entrypoint.sh
#runs when the image starts:
ENTRYPOINT [ "docker-entrypoint.sh" ]
CMD ["/bin/bash"]