# openam1300-japanese-properties
OpenAM 13.0.0 日本語化ファイル。以下のいずれかができます。
* 日本語に完全対応したOpenAM 13.0.0をビルドする(このページの「ビルド方法」のセクションを参照)
* デプロイ済みのOpenAM 13.0.0を完全な日本語対応にする(このページの「ビルドせずにデプロイする方法」のセクションを参照)

ビルド方法
------
以下コマンド実行して、OpenAM 13.0.0のソースコードに日本語化ファイルコピーし、Mavenでビルドします。  
※OpenAMのソースコードをビルドするには、以下のソフトウェアが必要です。
- Git 1.7.6 以上
- JDK 1.7以上
- Apache Maven 3.1以上

(1) 以下のコマンドを実行:  
```bash
wget -N --no-check-certificate https://raw.githubusercontent.com/k-tamura/openam1300-japanese-properties/master/build-openam-jp.sh
chmod +x build-openam-jp.sh
./build-openam-jp.sh
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

ライセンス
------
Please refer to the legal/CDDLv1.0.txt in OpenAM war file.

The contents of this file are subject to the terms of the Common Development and Distribution License (the License). You may not use this file except in compliance with the License.

You can obtain a copy of the License at legal/CDDLv1.0.txt. See the License for the specific language governing permission and limitations under the License.

When distributing Covered Software, include this CDDL Header Notice in each file and include the License file at legal/CDDLv1.0.txt. If applicable, add the following below the CDDL Header, with the fields enclosed by brackets [] replaced by your own identifying information: "Portions copyright [year] [name of copyright owner]".
