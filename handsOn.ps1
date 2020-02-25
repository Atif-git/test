Connect-AzAccount
$secret= @(Get-AzKeyVaultSecret -VaultName Atif-keyvault)
$value= $(Get-AzKeyVaultSecret -VaultName Atif-keyvault -Name value1).SecretValueText, $(Get-AzKeyVaultSecret -VaultName Atif-keyvault -Name value2).SecretValueText #retrieve keys from the keyvault
for($s=0; $s -lt $secret.Length; $s++){ 

for($i = 0; $i -lt $value.Length; $i++){
    if($s -ne $i){ continue
    }
Write-Output "$($secret[$s].Name) = $($value[$i])" >> C:\filename.txt}}