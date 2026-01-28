@echo off

rem https://habr.com/ru/companies/timeweb/articles/971258/

cd base

docker build --no-cache --force-rm -t docker_open5gs .

cd ../ims_base

docker build --no-cache --force-rm -t docker_kamailio .

cd ..

docker compose -f 4g-volte-deploy.yaml build

cd srslte

docker build --no-cache --force-rm -t docker_srslte .