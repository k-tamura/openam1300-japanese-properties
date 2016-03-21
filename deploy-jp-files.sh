#!/bin/sh
# Get the Japanese properties from GitHub.
wget --no-check-certificate https://codeload.github.com/k-tamura/openam1300-japanese-properties/zip/master -O openam1300-japanese-properties-master.zip

# Read a user input (OpenAM installation directory).
echo "Please input OpenAM installation directory. For example, /usr/share/tomcat7/webapps/openam"
read AM_DIR

# Restore and remove backup files if exist.
rm -fr $AM_DIR/XUI/locales/ja
rm -f $AM_DIR/WEB-INF/classes/*_ja.properties
\cp -fr $AM_DIR/config/auth/default_ja_bak/* $AM_DIR/config/auth/default_ja/
rm -fr $AM_DIR/config/auth/default_ja_bak

# Deploy Japanese properties, xml and json files.
mkdir -p $AM_DIR/XUI/locales/ja/
unzip openam1300-japanese-properties-master.zip
cp -pr $AM_DIR/config/auth/default_ja $AM_DIR/config/auth/default_ja_bak
cp -r openam1300-japanese-properties-master/openam-ui/openam-ui-ria/src/main/resources/locales/ja/* $AM_DIR/XUI/locales/ja/
cp -rf openam1300-japanese-properties-master/openam-server-only/src/main/webapp/config/auth/default_ja/* $AM_DIR/config/auth/default_ja/
find openam1300-japanese-properties-master -name '*.properties' -print | xargs cp -t $AM_DIR/WEB-INF/classes/
rm -fr openam1300-japanese-properties-master
rm openam1300-japanese-properties-master.zip
