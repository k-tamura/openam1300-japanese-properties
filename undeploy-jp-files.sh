#!/bin/sh
# Read a user input (OpenAM installation directory).
echo "Please input OpenAM installation directory. For example, /usr/share/tomcat7/webapps/openam"
read AM_DIR

# Restore and remove backup files if exist.
rm -fr $AM_DIR/XUI/locales/ja
rm -f $AM_DIR/WEB-INF/classes/*_ja.properties
\cp -fr $AM_DIR/config/auth/default_ja_bak/* $AM_DIR/config/auth/default_ja/
rm -fr $AM_DIR/config/auth/default_ja_bak

