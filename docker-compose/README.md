# Docker Compose Configurations

There is no reason to create separate configuration files outside of sources they've been inspired from, other than wanting to maintain a bit more personalized versions.

## Assumptions

Docker is already setup in local machine

## Running a sample

The docker-compose.yaml describes the configuration of service components. All samples can be run in a local environment by going into the root directory of each one and executing:

```shell script
docker-compose up -d
```

Check the README.md of each sample to get more details on the structure and what is the expected output. To stop and remove all containers of the sample application run:

```shell script
docker-compose down
```

Use -v flag to remove the volumes if looking to erase all data.

```shell script
docker-compose down -v
```

## Configuration Notes

### Versioning

Docker compose versioning in the configuration file is based on docker engine being used. Use [this link](https://docs.docker.com/compose/compose-file/compose-versioning/) to find out suitable version.

## Samples

### Databases

- [Cassandra](cassandra/docker-compose.yml)
- [Maria DB](./docker-compose-mariadb.yml)
- [MongoDB + Mongo-Express](./docker-compose-mongodb.yml)
- [MySQL](./docker-compose-mysql.yml)
- [Postgres](./docker-compose-postgres.yml)
- [Redis](./docker-compose-redis.yml)

### Infrastructure

- [ELK](./elasticsearch-logstash-kibana)
- [Prometheus-Grafana](./prometheus-grafana/docker-compose.yml)

### Messaging

- [RabbitMQ](./rabbitmq/docker-compose.yml)
- [Kafka](./docker-compose-zk-single-kafka-single.yml)

## Credits

- [GitHub - Awesome Compose](https://github.com/docker/awesome-compose)
- [GitHub - Compose](https://github.com/docker/compose)
- [GitHub - Docker Samples](https://github.com/dockersamples)
    - [GitHub - Docker Samples - Example Voting App](https://github.com/dockersamples/example-voting-app)
