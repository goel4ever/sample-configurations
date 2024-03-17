# memcached

The `command` option is used to start Memcached with a maximum memory limit of 64 megabytes.

The `healthcheck` uses `nc (netcat)` to send a `stats` command to the Memcached service.
If the service fails the healthcheck five times in a row, Docker will restart it.
