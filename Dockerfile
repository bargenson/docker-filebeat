FROM        ubuntu:wily

RUN         apt-get update -y && apt-get install -y python curl

ADD         filebeat-1.1.0-x86_64   /filebeat
ADD         docker-entrypoint.sh    /entrypoint.sh
RUN         chmod +x /entrypoint.sh

ENTRYPOINT  ["/entrypoint.sh"]
CMD         ["start"]