#!/bin/sh

echo "构建"

cd server
cd maven
./install.sh


cd ../project

mvn clean package -Pbj -X

cd distribution/target/docker-bin/

cd boss
docker build -t="boss:latest" .
cd ../
#
cd gateway
docker build -t="gateway:dev" .
cd ../
#
cd scene
docker build -t="scene:dev" .
cd ../

cd client
docker build -t="client:dev" .
cd ../

