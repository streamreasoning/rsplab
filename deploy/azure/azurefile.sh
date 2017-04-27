#!/bin/bash

wget -c https://github.com/Azure/azurefile-dockervolumedriver/releases/download/v0.5.1/azurefile-dockervolumedriver
wget -c https://raw.githubusercontent.com/Azure/azurefile-dockervolumedriver/master/contrib/init/systemd/azurefile-dockervolumedriver.default
wget -c https://raw.githubusercontent.com/Azure/azurefile-dockervolumedriver/master/contrib/init/systemd/azurefile-dockervolumedriver.service

chmod +x azurefile-dockervolumedriver


ls -al

sed -i -e 's/youraccount/$1/g' azurefile-dockervolumedriver.default
sed -i -e 's/yourkey/$2/g' azurefile-dockervolumedriver.default

mv azurefile-dockervolumedriver /usr/bin/azurefile-dockervolumedriver
mv azurefile-dockervolumedriver.default /etc/default/azurefile-dockervolumedriver/azurefile-dockervolumedriver.default
mv azurefile-dockervolumedriver.service /etc/systemd/system/azurefile-dockervolumedriver.service

systemctl daemon-reload
systemctl enable azurefile-dockervolumedriver
systemctl start azurefile-dockervolumedriver
systemctl status azurefile-dockervolumedriver

docker volume create -d azurefile --name test -o share=test