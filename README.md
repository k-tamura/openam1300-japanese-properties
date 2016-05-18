# openam1300-japanese-properties
OpenAM 13.0.0 Japanese properties. You can do one of:
* To build OpenAM 13.0.0 that fully localized to Japanese, See also the section "How to build" in this page
* To localize a deployed OpenAM 13.0.0 server in Japanese, See also the section "How to deploy without build" in this page

How to build
------
Execute the commands to copy Japanese properties to the OpenAM 13.0.0 source code and build by Maven:  
```bash
wget -N --no-check-certificate https://raw.githubusercontent.com/k-tamura/openam1300-japanese-properties/master/build-openam-jp.sh
chmod +x build-openam-jp.sh
./build-openam-jp.sh
```

You need Git client version 1.7.6 to checkout code anonymously and JDK 1.7/Maven 3.1.x for building.
- Git 1.7.6  or above
- JDK 1.7 or above
- Apache Maven 3.1 or above

How to deploy without build
------
If you do not want to build, you can deploy all files.

(1) Shut down the web application container in which you deployed OpenAM.  
(2) Execute the commands:  
```bash
wget -N --no-check-certificate https://raw.githubusercontent.com/k-tamura/openam1300-japanese-properties/master/deploy-jp-files.sh
chmod +x deploy-jp-files.sh
./deploy-jp-files.sh
```
(3) Start up the web application container.  

How to remove the files
------
(1) Shut down the web application container in which you deployed OpenAM.  
(2) Execute the commands:  
```bash
wget -N --no-check-certificate https://raw.githubusercontent.com/k-tamura/openam1300-japanese-properties/master/undeploy-jp-files.sh
chmod +x undeploy-jp-files.sh
./undeploy-jp-files.sh
```
(3) Start up the web application container.  

License
------
Please refer to the legal/CDDLv1.0.txt in OpenAM war file.

The contents of this file are subject to the terms of the Common Development and Distribution License (the License). You may not use this file except in compliance with the License.

You can obtain a copy of the License at legal/CDDLv1.0.txt. See the License for the specific language governing permission and limitations under the License.

When distributing Covered Software, include this CDDL Header Notice in each file and include the License file at legal/CDDLv1.0.txt. If applicable, add the following below the CDDL Header, with the fields enclosed by brackets [] replaced by your own identifying information: "Portions copyright [year] [name of copyright owner]".
