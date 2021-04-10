$TenantId = '5c147d8a-3229-4a42-a54e-98b937904e15'
$SubID = 'bad8333d-60e3-47ec-884d-20456f2df201'
$RG = 'AIB-RG'
$Name = 'Win10AIB'
$TemplateFile = "C:\Users\mneal\OneDrive - Arkphire\Training\Azure\VM-JSON\azuredeploy.json"
$TemplateParameterFile = "C:\Users\mneal\OneDrive - Arkphire\Training\Azure\VM-JSON\azuredeploy.parameters.json"

Connect-AzAccount -TenantId $TenantId -SubscriptionID $SubID

New-AzResourceGroupDeployment `
    -Name $Name `
    -ResourceGroupName $RG `
    -TemplateFile $TemplateFile `
    -TemplateParameterFile $TemplateParameterFile