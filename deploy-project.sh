#!/bin/sh

echo "DEPLOY-PROJECT START"

echo "PLEASE INPUT PROJECT NAME"

PROJECT_NAME="$@"

mkdir -p $CATALINA_HOME/webapps/$PROJECT_NAME

cp -r src/main/webapp/* $CATALINA_HOME/webapps/$PROJECT_NAME

cp -r target/classes/* $CATALINA_HOME/webapps/$PROJECT_NAME/WEB-INF/

cp -r lib $CATALINA_HOME/webapps/$PROJECT_NAME/WEB-INF/

RETVAL=$?

echo "DEPLOY-PROJECT DONE"
