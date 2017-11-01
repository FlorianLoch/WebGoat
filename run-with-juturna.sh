#!/usr/bin/env bash
#
# "mvn package" should have been run before running this script
# in order to generate the needed artifacts
#

# This needs to be a relative path
JUTURNA_PATH=../

cd webgoat-container/target
JUTURNA_PATH="${JUTURNA_PATH}../../out/artifacts/taintStdLib_jar/taintStdLib.jar"

java -javaagent:${JUTURNA_PATH}=servlet \-Xbootclasspath/p:${JUTURNA_PATH} -jar webgoat-container-7.1-war-exec.jar
