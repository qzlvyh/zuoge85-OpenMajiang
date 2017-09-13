#!/bin/sh

echo "构建"

cd server
cd maven
./install.sh


cd ../project

mvn clean package -Pbj -X

#cd boss
#docker build -t="boss:dev" .
#cd ../
#
#cd gateway
#docker build -t="gateway:dev" .
#cd ../
#
#cd scene
#docker build -t="scene:dev" .
#cd ../

