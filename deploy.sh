#/bin/bash
if [ -e ./complex/.git ]
then
cd complex && git pull
docker-compose up -d
else
mkdir complex && cd complex && git clone git@github.com:nik-weter/multi-docker.git .
docker-compose up -d
fi
