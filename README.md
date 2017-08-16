# mssql-slacker demo

[Slacker](https://github.com/vassilvk/slacker/wiki) is a transacted RSpec-based framework for developing automated tests for SQL Server 2008-2017 and SQLDB on Azure programmable objects such as stored procedures, scalar/table functions, triggers, and so on, hence you will need a mssql database to play with. 

The easiest way is to bootstrap with a mssql container for SQL Server 2017. After following this guide, you will have a complete setup with a mssql container, a slacker container that runs your db unittests and a docker network where mssql and slacker containers connect through docker-compose.

[mssql-slacker demo image docker hub repository](https://hub.docker.com/r/ericskang/mssql-slacker/)

## Running the sample slacker tests
Simply run docker-compose up -d by running the following commands after cloning this repository:

```bash
cd ./sample
docker-compose build
docker-compose up -d

docker exec -ti slacker_sample slacker

```

## Build slacker runner docker image

```bash

cd ./build
./docker_build.sh

```

## Create your first mssql database unittest using slacker
[https://github.com/vassilvk/slacker/wiki](https://github.com/vassilvk/slacker/wiki)
