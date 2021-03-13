# Flyway Migrations

Flyway is an open-source database migration tool. It strongly favors simplicity and convention over configuration.

It is based around just 7 basic commands: Migrate, Clean, Info, Validate, Undo, Baseline and Repair.

## Sources

Best place to look for configuration file are official docs

- Configuration [Parameters](https://flywaydb.org/documentation/configuration/parameters/)
- Configuration [File](https://flywaydb.org/documentation/configuration/configfile.html)

## Sample Configuration Files

- [Basic](./basic-flyway.conf)
- [Detailed](./detailed-flyway.conf)

## Specific Configurations

### Spring Boot

Just include the maven or gradle dependency
```shell script
compile "org.flywaydb:flyway-core"
```
Spring Boot will then automatically autowire Flyway with its DataSource and invoke it on startup. Hence no other configuration or file required to get started.
