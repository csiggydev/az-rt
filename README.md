# az-rt
azure route-table association switcher

This is a simple bash script that leverages azure-cli to make several route-table subnet association changes within a single vNET. 


## Instructions 
  1. Install azure-cli
  2. Login to your subscription with `az login`
  3. View your subscriptions `az account list -o table`
  4. Select the desired subscription `az account set --subscription <name>`
  5. Simply change the variable values in the script to your own unique resource name where applicable.
  6. Run the script

