#!/bin/sh

set -e

echo "COMPILE START"

mkdir -p target/classes target/test-classes 

CLASSPATH = "target/class;target/test-classes"

[[ -d lib ]] && for WEBFILE in lib/*.jar; do

CLASSPATH_WEB = "$CLASSPATH;$WEBFILE"

done

CLASSPATH_TEST = $CLASSPATH_WEB

[[ -d lib-test ]] && for TESTFILE in lib-test/*.jar; do

CLASSPATH_TEST = "$CLASSPATH_TEST;$TESTFILE"

done

CLASSPATH_RUNTIME = $CLASSPATH_TEST

[[ -d lib-runtime ]] && for RUNTIMEFILE in lib-runtime/*.jar; do

CLASSPATH_RUNTIME = "$CLASSPATH_RUNTIME;$RUNTIMEFILE"

done

find src/mian/java/ -type f -name /*.java | xargs javac -d target/classes -classpath $CLASSPATH

find src/test/java/ -type f -name /*.java | xargs javac -d target/test-classes -classpath $CLASSPATH_RUNTIME

echo "COMPILE DONE"
