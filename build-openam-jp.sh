#!/bin/sh
# Get OpenAM 13.0.0 source code from GitHub if it does not exist on local.
if [ ! -e 13.0.0.zip ]; then
    wget -N --no-check-certificate https://github.com/ForgeRock/openam/archive/13.0.0.zip
fi

# Get Japanese properties from GitHub.
wget --no-check-certificate https://codeload.github.com/k-tamura/openam1300-japanese-properties/zip/master -O openam1300-japanese-properties-master.zip

# Copy the Japanese properties to OpenAM 13 source code.
rm -fr openam-13.0.0
unzip 13.0.0.zip
unzip openam1300-japanese-properties-master.zip
rm openam1300-japanese-properties-master/README.*
rm openam1300-japanese-properties-master/*.sh
\cp -r openam1300-japanese-properties-master/* openam-13.0.0/
rm -fr openam1300-japanese-properties-master
cd openam-13.0.0

# Read a user input (path to mvn command).
echo "Please input path to the mvn command if needed. For example, /usr/local/apache-maven-3.1.0/bin/mvn"
read MVN_CMD
if [ "$MVN_CMD" = "" ]; then
    MVN_CMD=mvn
fi
# Build OpenAM
export MAVEN_OPTS="-Xmx1024m -XX:MaxPermSize=512m"
$MVN_CMD -DskipTests=true clean install
