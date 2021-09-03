$TenantId = '73b820f6-c42e-447c-a4b5-2eef6c06aadc'
$SubID = 'e7aabd16-98cd-4367-ad15-a2d7c95b70d8'
$RG = 'AVD-Image-RG'
$Location = "UK South"
$Name = 'AVD-VM'
$TemplateFile = "C:\Users\mehodgeadmin\OneDrive\Git\Win10VM-KV\azuredeploy.json"
$TemplateParameterFile = "C:\Users\mehodgeadmin\OneDrive\Git\Win10VM-KV\azuredeploy.parameters.json"

Connect-AzAccount -TenantId $TenantId -SubscriptionID $SubID

New-AzResourceGroup -Name $RG -Location $Location
New-AzResourceGroupDeployment `
    -Name $Name `
    -ResourceGroupName $RG `
    -TemplateFile $TemplateFile `
    -TemplateParameterFile $TemplateParameterFile