#!/bin/bash

echo "Creating VM " $1

echo "az vm create --resource-group rsplab --location westeurope --name $1 --nsg "" --authentication-type password --admin-username rspdev --admin-password RSPlab123456 --image UbuntuLTS --vnet-name rsplabVnet --subnet Subnet --public-ip-address-dns-name $1"
az vm create --resource-group rsplab --location westeurope --name $1 --nsg "" --authentication-type password --admin-username rspdev --admin-password RSPlab123456 --image UbuntuLTS --vnet-name rsplabVnet --subnet Subnet --public-ip-address-dns-name $1

echo "Adding Docker Extensions"
echo "az vm extension set --resource-group rsplab --vm-name $1  --name DockerExtension --publisher Microsoft.Azure.Extensions  --version 1.1 --settings '{}'"
az vm extension set --resource-group rsplab --vm-name $1  --name DockerExtension --publisher Microsoft.Azure.Extensions  --version 1.1 --settings '{}'
