# RabbitMQ Docker Compose

Ready-to-use RabbitMQ Docker Compose configuration.

## About

1. `rabbitmq:alpine`: This is a lightweight RabbitMQ image based on the Alpine Linux distribution. It contains the basic RabbitMQ server without any plugins enabled by default.  
2. `rabbitmq:management-alpine`: This image is also based on the Alpine Linux distribution, but it has the RabbitMQ management plugin enabled by default. The management plugin provides a web-based user interface for managing and monitoring your RabbitMQ server.

If you need a web-based UI for managing your RabbitMQ server, you should use the `rabbitmq:management-alpine` image.
If you don't need the management interface and want a minimal RabbitMQ server, you can use the `rabbitmq:alpine` image.

## Testing

Access the RabbitMQ management interface at [http://localhost:15672](http://localhost:15672) with the default username and password `guest`.

```shell
# List all queues
$ docker exec -it rabbitmq_core rabbitmqctl list_queues
```

## Notes

* The `RABBITMQ_DEFAULT_USER` and `RABBITMQ_DEFAULT_PASS` environment variables are used to set the default username and password for the RabbitMQ server.
* The `rabbitmq.config` file is used to configure the RabbitMQ server. It is located in the `/etc/rabbitmq` directory inside the RabbitMQ container. The file uses Erlang syntax, and each configuration item is a tuple that consists of the configuration name, a period, and the configuration value.
