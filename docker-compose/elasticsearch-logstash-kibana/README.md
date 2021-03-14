## Compose sample application
### Elasticsearch, Logstash, and Kibana (ELK) in single-node

Project structure:
```
.
└── docker-compose.yml
```

[_docker-compose.yml_](docker-compose.yml)
```
services:
  elasticsearch:
    image: elasticsearch:7.8.0
    ...
  logstash:
    image: logstash:7.8.0
    ...
  kibana:
    image: kibana:7.8.0
    ...
```

## Deploy with docker-compose

```
$ docker-compose up -d
Creating network "elasticsearch-logstash-kibana_elastic" with driver "bridge"
Creating elasticsearch_core ... done
Creating kibana_core        ... done
Creating logstash_core      ... done
```

## Expected result

Listing containers must show three containers running and the port mapping as below:
```
$ docker ps
CONTAINER ID        IMAGE                 COMMAND                  CREATED             STATUS                    PORTS                                                                                            NAMES
4ba5401dbb82   logstash:7.8.0         "/usr/local/bin/dock…"   2 minutes ago   Up About a minute             0.0.0.0:5000->5000/tcp, 0.0.0.0:5044->5044/tcp, 0.0.0.0:9600->9600/tcp, 0.0.0.0:5000->5000/udp   logstash_core
a64be0c1fe4d   kibana:7.8.0           "/usr/local/bin/dumb…"   2 minutes ago   Up About a minute             0.0.0.0:5601->5601/tcp                                                                           kibana_core
d792a8e6ef8c   elasticsearch:7.8.0    "/tini -- /usr/local…"   2 minutes ago   Up About a minute (healthy)   0.0.0.0:9200->9200/tcp, 0.0.0.0:9300->9300/tcp                                                   elasticsearch_core
```

After the application starts, navigate to below links in your web browser:

* Elasticsearch: [`http://localhost:9200`](http://localhost:9200)
* Logstash: [`http://localhost:9600`](http://localhost:9600)
* Kibana: [`http://localhost:5601`](http://localhost:5601)

Stop and remove the containers
```
$ docker-compose down
```

## Attribution

The [example Nginx logs](https://github.com/docker/awesome-compose/tree/master/elasticsearch-logstash-kibana/logstash/nginx.log) are copied from [here](https://github.com/elastic/examples/blob/master/Common%20Data%20Formats/nginx_json_logs/nginx_json_logs).