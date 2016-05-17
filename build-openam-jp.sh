#!/bin/sh
# Get OpenAM 13.0.0 source code from GitHub if it does not exist on local.
if [ ! -e 13.0.0.zip ]; then
    wget -N --no-check-certificate https://github.com/ForgeRock/openam/archive/13.0.0.zip
fi

# Get the Japanese properties from GitHub.
wget --no-check-certificate https://codeload.github.com/k-tamura/openam1300-japanese-properties/zip/master -O openam1300-japanese-properties-master.zip

# Copy the Japanese properties to OpenAM 13 source code.
unzip 13.0.0.zip
unzip master.zip
rm openam1300-japanese-properties-master/README.*
rm openam1300-japanese-properties-master/*.sh
\cp -r openam1300-japanese-properties-master/* openam-13.0.0/
rm -fr openam1300-japanese-properties-master

# Build OpenAM
cd openam-13.0.0
export MAVEN_OPTS="-Xmx1024m -XX:MaxPermSize=512m"
mvn -DskipTests=true clean install
