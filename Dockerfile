FROM mongo:4.0.4
RUN apt-get update && apt-get install -y vim iputils-ping
LABEL <HORST> horstleung@gmail.com

EXPOSE 27017 27017

COPY ./dockerfiles/mongodb/run.sh /run.sh
COPY ./dockerfiles/mongodb/set_mongodb_password.sh /set_mongodb_password.sh

RUN chmod +x /run.sh
RUN chmod +x /set_mongodb_password.sh
CMD ["/run.sh"]
