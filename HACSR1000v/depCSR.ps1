$deploymentName = "firstCSR"
$deploymentResourceGroup = "depRGName"
$templateURI = "https://raw.githubusercontent.com/ExchMaster/HACSR1000v/master/HACSR1000v/azuredeploy.json"
$adminUsername = "adm-jsmith"
$sshPublicKey = "ssh-rsa AAAAB3NzaC1yc2EAAAABJQAAAQEAo8gj83eF5EByTrwoSHwEzN6IOrw7gLQbcnWGfsk66AQKh6TfttjpemlVN6O7DEGyBwai6HvkgVHrnmfhkr53aL85J2hcvHKKfyHTanwcnYbP+LYQAhrLJCWIGtOLGNq5j0T8Q8d82l2+H9Q2F1qyZqTI/6peMWmYwnhVZRwcia6HWxyMUbWR4bkcVGDiJmniejBmqbvb+VIXcDTivgnnYo7cgRMbuppw/qgSmSkZlR6t85tLFUfge3tCFjXrOdkm8WPiQk+U6nqR6sGYnweoOCauSr5vjVkYita9Wa+Hm0Qh7MaviDMKnTDMMP6/64ZMEh4zN/LCLCXXFg9S0VpdLQ== rsa-key-20170411"
$csrName = "CSR-One"
$csrSize = "Standard_D2_v2"
$virtualNetworkResourceGroupName = "depRGName" 
$virtualNetworkName = "vnetName"
$subnet1Name = "subnet1"
$csr1NIC1IPAddress = "10.1.1.10"
$subnet2Name = "subnet2"
$csr1NIC2IPAddress = "10.1.2.10"
$availabilitySetName = "avSetName"

New-AzureRmResourceGroupDeployment `
-Name $deploymentName `
-ResourceGroupName $deploymentResourceGroup `
-TemplateUri $templateURI `
-adminUsername $adminUsername `
-sshPublicKey $sshPublicKey `
-csrName $csrName `
-csrSize $csrSize `
-virtualNetworkResourceGroupName $virtualNetworkResourceGroupName `
-virtualNetworkName $virtualNetworkName `
-subnet1Name $subnet1Name `
-csr1NIC1IPAddress $csr1NIC1IPAddress `
-subnet2Name $subnet2Name `
-csr1NIC2IPAddress $csr1NIC2IPAddress `
-availabilitySetName $availabilitySetName




