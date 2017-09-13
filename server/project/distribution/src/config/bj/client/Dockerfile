FROM java:openjdk-8-jdk

WORKDIR /usr/src/myapp

COPY classes classes
COPY lib lib
COPY startup startup

EXPOSE 8080
CMD ["./startup.sh"]


