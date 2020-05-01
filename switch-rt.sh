#!/bin/bash

# Script to switch Azure route-table association for multiple subnets -Chris S

# Array of subnets and other variables

subnets=( Subnet1 Subnet2 Subnet3 Subnet4 Subnet5 )
rt="Insert the destination route-table name here"
rtalt="insert your alternate destination route-table name here - if applicable-- for the second for loop"
RgName="insert your resource group name"
vnet="insert your vnet name"

for sub in "${subnets[@]}"
do 
  echo "Updating Route-Table for $sub ..."
az network vnet subnet update \
  --name $sub \
  --vnet-name $vnet \
  --resource-group $RgName \
  --route-table $rt
done

# Alternate subnets to join alternate route-table - optional

altsubnets=( Subnet6 Subnet7 Subnet8 Subnet9 Subnet10 )

for altsub in "${altsubnets[@]}"
do 
  echo "Updating Route-Table for $altsub ..."
az network vnet subnet update \
  --name $altsub \
  --vnet-name $vnet \
  --resource-group $RgName \
  --route-table $rtalt
done