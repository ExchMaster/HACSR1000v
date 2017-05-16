# Deploy Cisco CSR 1000v into existing VNET & Availability Set

<a href="https://portal.azure.us/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2FExchMaster%2FHACSR1000v%2Fmaster%2FHACSR1000v%2Fazuredeploy.json" target="_blank">
    <img src="https://raw.githubusercontent.com/Azure/azure-quickstart-templates/master/1-CONTRIBUTION-GUIDE/images/deploytoazuregov.png"/>
</a>

This template will deploy a single Cisco CSR 1000v into an existing virtual network + availability set.  Utilizing this template to deploy multiple CSR's into one availability set ensures you recieve the best uptime for your routers and that you qualify for <a href="https://azure.microsoft.com/en-us/support/legal/sla/virtual-machines" target="_blank">Azure SLA's</a> governing uptime for Azure infrastructure.  For information regarding the configuration of the Cisco CSR in highly avaliable deployments, please review the <a href="http://www.cisco.com/c/en/us/td/docs/routers/csr1000/software/azu/b_csr1000config-azure.html" target="_blank">Cisco CSR on Azure Configuration Guide</a>.

To deploy successfully, you must have already created the virtual network, subnets, and the availability set to which you will be deploying into.  Additionally:

* The availability set must reside in the same resource group as the CSR's which are being deployed.
* The deployment can use the same resource group as the virtual network, or a different one.  If you wish to use the same resource group for the routers and the virtual network, just specify the same resource group name for both the deployment and the virtual network resource group name parameter (see below)

The following lists provides the necessary information to successfullly deploy the CSR.
 
1. _adminUSERNAME_:  The admin username is the super user on the system and can _NOT_ utilize common names (admin, root, or administrator). Example: adm-jdoe
2. _sshPublicKey_:  SSH Public Key, this will be placed into the ~/.ssh/authorized_keys file for _adminUsername_.
3. _csrName_:  CSR Virtual Machine Name, should be unique within the subscription because the name is used to build out the names for other components necessary for the successful deployment of the VM.
4. _csrSize_:  The size of the CSR to deploy. D2: 2 core, 7GB.  D3: 4 cores, 14GB.  D3: 8 cores, 28GB.
5. _virtualNetworkResourceGroupName_:  The name of the resource group which contains the virtual network that the CSR(s) will be connected to. Example:  rgNetworking.
6. _virtualNetworkName_: The name of the virtual network that the CSR's will be connected to. Example: hubVnet.
7. _subnet1Name_:  The name of the first subnet in your virtual network.  The first NIC for each CSR will be connected to this subnet. Example:  subnet1.
8. _CSR1NIC1IPAddress_:  The IP Address of the first NIC in the first CSR.  Should be from the range covered by 'subnet1Name'. Example:  10.1.1.100.
9. _subnet2Name_:  The name of the second subnet in your virtual network.  The second NIC for each CSR will be connected to this subnet. Example:  subnet2.
10. _CSR1NIC2IPAddress_: The IP Address of the second NIC in the second CSR.  Should be from the range covered by 'subnet2Name'. Example:  10.2.1.100.
11. _availabilitySetName_: The availability set to which you would like this CSR added. The availability set must exist in the same resource group as the CSR(s). Example:  csravset1.