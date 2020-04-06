#!/bin/bash
echo "starting ci..."
echo "APP_NAME is $APP_NAME ..."

echo "copying jar to deploy directory..."
cp ./target/$APP_NAME /home/deploy/

cd /home/deploy

echo "starting app..."
nohup java -jar $APP_NAME &

echo "$APP_NAME is running..."

