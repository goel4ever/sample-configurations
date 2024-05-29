# Configurations

Sample configurations to instantiate various tools for rapid prototyping

> Note: [here](https://learn-with-me.github.io/Development-Setup-Handbook/) is a guide for installing required tools locally

### Configurations

- **Database**: [Cassandra](./docker-compose-database/cassandra), [DynamoDB](./docker-compose-database/dynamodb), [MariaDB](./docker-compose-database/mariadb), [Memcached](./docker-compose-database/memcached), [MongoDB](./docker-compose-database/mongodb), [MySQL](./docker-compose-database/mysql), [pgBouncer](./docker-compose-database/pgbouncer), [Postgres](./docker-compose-database/postgres), [Redis](./docker-compose-database/redis), [Redis Cluster](./docker-compose-database/redis-cluster)
- **Infrastructure**: [Grafana](./docker-compose-infra/grafana), [Jaeger](./docker-compose-infra/jaeger), [Prometheus](./docker-compose-infra/prometheus)
- **Messaging Queues**: [Kafka](./docker-compose-mq/kafka), [Kafka Connect], [RabbitMQ](./docker-compose-mq/rabbitmq)
- **Application**: [Flyway](./migrations-flyway), Liquibase, AWS cli
- **Tools**: [Nginx](./docker-compose-tools/nginx)
- **Kubernetes**
- **Terraform**: [AWS](./terraform-aws)

## Contribute

Feel free create a PR to contribute or suggest edits

## Credits

- [GitHub - Awesome Compose](https://github.com/docker/awesome-compose)
- [GitHub - Compose](https://github.com/docker/compose)
- [GitHub - Docker Samples](https://github.com/dockersamples)
    - [GitHub - Docker Samples - Example Voting App](https://github.com/dockersamples/example-voting-app)
- [AWS Guide](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/DynamoDBLocal.DownloadingAndRunning.html)
