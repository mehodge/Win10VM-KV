$RG = "VM-KeyVault-RG"
$Location = "North Europe"
$VaultName = "LocalVmAdmins"


New-AzResourceGroup -Name $RG -Location $Location
New-AzKeyVault `
  -VaultName $VaultName `
  -resourceGroupName $RG `
  -Location $Location `
  -EnabledForTemplateDeployment
$secretvalue = ConvertTo-SecureString 'weHU3878!!??' -AsPlainText -Force
$secret = Set-AzKeyVaultSecret -VaultName $VaultName -Name 'mehodgeadmin' -SecretValue $secretvalue

Get-AzKeyVault $VaultName | Select-Object ResourceId