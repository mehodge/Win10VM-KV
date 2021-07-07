$TenantId = '5c147d8a-3229-4a42-a54e-98b937904e15'
$SubID = 'c25742b0-e9d4-4bed-8247-0ec3c6bc5a42'
$RG = 'GoContractorIntune-RG'
$Location = "North Europe"
$Name = 'IntuneVM'
$TemplateFile = "C:\Users\mehodgeadmin\OneDrive\Git\Win10VM-KV\azuredeploy.json"
$TemplateParameterFile = "C:\Users\mehodgeadmin\OneDrive\Git\Win10VM-KV\azuredeploy.parameters.json"

Connect-AzAccount -TenantId $TenantId -SubscriptionID $SubID

New-AzResourceGroup -Name $RG -Location $Location
New-AzResourceGroupDeployment `
    -Name $Name `
    -ResourceGroupName $RG `
    -TemplateFile $TemplateFile `
    -TemplateParameterFile $TemplateParameterFile