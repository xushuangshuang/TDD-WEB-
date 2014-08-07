#!/bin/sh

echo "DEPLOY-PROJECT START"

mkdir -p $CATALINA_HOME/webapps/

cp -r target/classes/* $CATALINA_HOME/webapps/

cp -r src/main/webapp/* $CATALINA_HOME/webapps/

cp -r lib $CATALINA_HOME/webapps/WEB-INF/

echo "DEPLOY-PROJECT DONE"
