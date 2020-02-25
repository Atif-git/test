Connect-AzAccount

$key= @(Get-AzKeyVaultKey -VaultName Atif-keyvault) #| Select Name
$secret= @(Get-AzKeyVaultSecret -VaultName Atif-keyvault) #| Select Name | Out-File C:\filename.txt

Write-host $key[0].Name = $secret[0].Name
Write-Host $key[1].Name = $secret[1].Name

Get-ChildItem -Recurse $source |  ?{-not $_.PSIsContainer} | ForEach-Object {Audit-File $_} | Sort-Object fullname | Select FullName,CreationTime,LastWriteTime,Length,Owner | Out-File C:\filename.txt