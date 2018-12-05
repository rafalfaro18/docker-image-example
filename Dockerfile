FROM centos:latest
#contained in the image:
WORKDIR /app
RUN echo 'Hello World'
# RUN yum check-update
# RUN yum update -y
COPY docker-entrypoint.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/docker-entrypoint.sh
#runs when the image starts:
ENTRYPOINT [ "docker-entrypoint.sh" ]
CMD ["top"]