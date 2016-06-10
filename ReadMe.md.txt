# Create a new VM in existing VNET from a custom image

<a href="https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2FExchMaster%2FNHLBI-Custom-Image-Deploy-POC%2Fmaster%2Fazuredeploy.json" target="_blank">
    <img src="http://azuredeploy.net/deploybutton.png"/>
</a>
<a href="http://armviz.io/#/?load=https%3A%2F%2Fraw.githubusercontent.com%2FExchMaster%2FNHLBI-Custom-Image-Deploy-POC%2Fmaster%2Fazuredeploy.json" target="_blank">
    <img src="http://armviz.io/visualizebutton.png"/>
</a>

This template assumes you have an existing image created within your storage account and that you wish to deploy a new VM based off it.  This tempalte will create the VM and bring it online within a pre-existing virtual network subnet.