#!/bin/bash
echo "starting ci..."
echo "APP_NAME is $APP_NAME ..."

echo "copying jar to deploy directory..."
cp ./target/$APP_NAME /home/deploy/

echo "stopping $APP_NAME ..."
pid=`ps -ef | grep -w "$APP_NAME" | grep -v "grep" | awk '{print $2}'`
if [-z $pid ];then
 echo "$APP_NAME is not running..."
else 
 echo "doing kill -9 $pid"
 kill -9 $pid
fi
 
cd /home/deploy
echo "starting $APP_NAME ..."
nohup java -jar $APP_NAME & echo "$APP_NAME is running..."
