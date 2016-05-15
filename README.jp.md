# openam1300-japanese-properties
OpenAM 13.0.0 日本語化ファイル。以下のいずれかができます。
* 日本語に完全対応したOpenAM 13.0.0をビルドする
* デプロイ済みのOpenAM 13.0.0を完全な日本語対応にする

ビルド方法
------
[TODO] ビルド手順に関しては現在未検証中です。
※OpenAMのソースコードをチェックアウトするには、Gitライアント が必要です。また、ビルドにはJDK 1.7以上、Apache Maven 3.1以上が必要です。

(1) "Download ZIP"ボタンをクリックし、openam1300-japanese-properties-master.zipをダウンロード。  
(2) 以下のコマンドを実行:  
```bash
unzip openam1300-japanese-properties-master.zip
rm openam1300-japanese-properties-master/README.*
rm openam1300-japanese-properties-master/*.sh
rm -fr openam1300-japanese-properties-master/images
git clone https://stash.forgerock.org/scm/openam/openam.git
cp -r openam1300-japanese-properties-master/* openam/
rm -fr openam1300-japanese-properties-master
cd openam
export MAVEN_OPTS="-Xmx1024m -XX:MaxPermSize=512m"
mvn -DskipTests=true clean install
```

ビルドせずにデプロイする方法
------
ビルドせずに既存のOpenAMにデプロイする場合は、以下の手順を実行します。

(1) OpenAMがデプロイされているWebアプリケーションコンテナを停止。  
(2) 以下のコマンドを実行:  
```bash
wget -N --no-check-certificate https://raw.githubusercontent.com/k-tamura/openam1300-japanese-properties/master/deploy-jp-files.sh
chmod +x deploy-jp-files.sh
./deploy-jp-files.sh
```
(3) Webアプリケーションコンテナを起動。  

または

(1) "Download ZIP"ボタンをクリックし、openam1300-japanese-properties-master.zipをダウンロード。  
(2) OpenAMがデプロイされているWebアプリケーションコンテナを停止。  
(3) 以下のコマンドを実行:  
```bash
export AM_DIR=/usr/share/tomcat7/webapps/openam
mkdir -p $AM_DIR/XUI/locales/ja/
unzip openam1300-japanese-properties-master.zip
cp -pr $AM_DIR/config/auth/default_ja $AM_DIR/config/auth/default_ja_bak
cp -r openam1300-japanese-properties-master/openam-ui/openam-ui-ria/src/main/resources/locales/ja/* $AM_DIR/XUI/locales/ja/
cp -rf openam1300-japanese-properties-master/openam-server-only/src/main/webapp/config/auth/default_ja/* $AM_DIR/config/auth/default_ja/
find openam1300-japanese-properties-master -name '*.properties' -print | xargs cp -t $AM_DIR/WEB-INF/classes/
rm -fr openam1300-japanese-properties-master
rm openam1300-japanese-properties-master.zip
```
(4) Webアプリケーションコンテナを起動。  

デプロイしたファイルを削除する方法
------
(1) OpenAMがデプロイされているWebアプリケーションコンテナを停止。  
(2) 以下のコマンドを実行:  
```bash
wget -N --no-check-certificate https://raw.githubusercontent.com/k-tamura/openam1300-japanese-properties/master/undeploy-jp-files.sh
chmod +x undeploy-jp-files.sh
./undeploy-jp-files.sh
```
(3) Webアプリケーションコンテナを起動。  

または

(1) OpenAMがデプロイされているWebアプリケーションコンテナを停止。  
(2) 以下のコマンドを実行:  
```bash
export AM_DIR=/usr/share/tomcat7/webapps/openam
rm -fr $AM_DIR/XUI/locales/ja
rm -f $AM_DIR/WEB-INF/classes/*_ja.properties
\cp -fr $AM_DIR/config/auth/default_ja_bak/* $AM_DIR/config/auth/default_ja/
rm -fr $AM_DIR/config/auth/default_ja_bak
```

ライセンス
------
Please refer to the legal/CDDLv1.0.txt in OpenAM war file.

The contents of this file are subject to the terms of the Common Development and Distribution License (the License). You may not use this file except in compliance with the License.

You can obtain a copy of the License at legal/CDDLv1.0.txt. See the License for the specific language governing permission and limitations under the License.

When distributing Covered Software, include this CDDL Header Notice in each file and include the License file at legal/CDDLv1.0.txt. If applicable, add the following below the CDDL Header, with the fields enclosed by brackets [] replaced by your own identifying information: "Portions copyright [year] [name of copyright owner]".
