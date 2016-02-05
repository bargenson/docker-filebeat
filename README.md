# What is Filebeat?
Filebeat is a lightweight, open source shipper for log file data. As the next-generation Logstash Forwarder, Filebeat tails logs and quickly sends this information to Logstash for further parsing and enrichment or to Elasticsearch for centralized storage and analysis.

![alt text](https://static-www.elastic.co/assets/blta28996a125bb8b42/packetbeat-fish-nodes-bkgd.png?q=755 "Filebeat logo")

> https://www.elastic.co/products/beats/filebeat

# Why this image?

This image use the Docker API to collect the logs of all the running containers on the same machine and ship them to a Logstash. No need to install manually Filebeat on your host or inside your images. Just use this image to create a container that gonna handle everything for you :-)

# How to use this image
Start Filebeat as follows:

```$ docker run -ti 
-v /var/run/docker.sock:/tmp/docker.sock 
-e LOGSTASH_HOST=monitoring.xyz -e LOGSTASH_PORT=5044 -e SHIPPER_NAME=$(hostname) 
bargenson/filebeat```

Three environment variables are needed:
* `LOGSTASH_HOST`: to specify on which server runs your Logstash
* `LOGSTASH_PORT`: to specify on which port listens your Logstash for beats inputs
* `SHIPPER_NAME`: to specify the Filebeat shipper name (deafult: the container ID) 
