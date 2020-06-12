#!/bin/sh
export JAVA_HOME=/app/jre
export JAVA=${JAVA_HOME}/bin/java
export _JAVA_OPTIONS="-Dawt.useSystemAAFontSettings=gasp -Dswing.aatext=true -Dsun.java2d.xrender=True"

${JAVA} -jar $(dirname $0)/logisim-evolution.jar

