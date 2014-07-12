docker-memcached
================

Docker container for running memcached in my webmail stack.

/tmp/memcached.sock will need to be bind-mounted from host to
this, and any other container that needs to use memcached.
