# Docker Compose Configurations

There is no reason to create separate configuration files outside of sources they've been inspired from, other than wanting to maintain a bit more personalized versions.
This repository is exactly that, using official documentation and best practices.

## Running a sample

```shell script
docker-compose -f $FILE_PATH up -d
docker-compose -f ./docker-compose-database/cassandra/docker-compose.yaml up -d
```

Check the README.md of each sample to get more details on the structure and what is the expected output. To stop and remove all containers of the sample application run:

```shell script
docker-compose down
docker-compose -f $FILE_PATH down
```

Use -v flag to remove the volumes if looking to erase all data.

```shell script
docker-compose down -v
```

## Configuration Notes

### Versioning

Docker compose versioning in the configuration file is based on docker engine being used. Use [this link](https://docs.docker.com/compose/compose-file/compose-versioning/) to find out suitable version.

## Samples

### Messaging

- [RabbitMQ](./rabbitmq/docker-compose.yaml)
- [Kafka](./docker-compose-zk-single-kafka-single.yml)
