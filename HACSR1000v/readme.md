# Deploy CSR into existing VNET & Avaliability Set

<a href="https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2FExchMaster%2FNHLBI-Custom-Image-Deploy-POC%2Fmaster%2Fazuredeploy.json" target="_blank">
    <img src="http://azuredeploy.net/deploybutton.png"/>
</a>


This template assumes you have an existing image created within your storage account and that you wish to deploy a new VM based off it.  This tempalte will create the VM and bring it online within a pre-existing virtual network subnet.  

The following lists provides the necessary information to successfullly deploy an image.

1. _VMName_:  Virtual Machine Name, should be unique within the subscription because the name is used to build out the names for other components necessary for the successful deployment of the VM.
2. _ADMINUSERNAME_:  The admin username is the super user on the system and can _NOT_ utilize common names (admin, root, or administrator).  This username will be quivalent of root on Linux and administrator on Windows.
3. _ADMINPASSWORD_:  Must be 12 characters long, utilize at least one special character, some derivatives of 'password' and other well known common pass word bases are blocked from use.
4. _OSTYPE_:  Defines the type of operating system; Windows or Linux
5. _OSDISKVHDURI_:  This is the URI for your custom image, it will have the form of:  https://__storageaccountname__.blob.core.windows.net/????*/????*.vhd.  Please take note of your storage account name, you will need it on step 7.
6. _VMSIZE_: Select the appropriate size of the virtual machine. To view sizes, use the following document: <a href="https://azure.microsoft.com/en-us/documentation/articles/virtual-machines-windows-sizes/" target="_blank">Azure VM Sizes</a>.
7. _VMSTORAGEACCOUNT_:  Please supply the storage account name from step five.  For example, if the custom image uri is:  https://jaisaname.blob.core.windows.net/vhds/rhelv101.vhd, then the value you would put in this field is 'jaisaname'.
8. _EXISTINGVIRTUALNETWORKNAME_:  The name of the existing virtual network where this new VM will be deployed.
9. _EXISTINGVIRTUALNETWORKRESOURCEGROUP_:  The name of the resource group which contains the virtual network where this new VM will be deployed.
10. _SUBNETNAME_: The name of the subnet inside the virtual network where this new VM will be deployed.

The key thing to remember is that the new VM must be deployed into the same storage account that the source image resides in.  That's why the same storagea account name is used in steps 5 and 7.