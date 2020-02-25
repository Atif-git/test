Connect-AzAccount
$secret= @(Get-AzKeyVaultSecret -VaultName Atif-keyvault | select Name)
for($secretitem = 0; $secretitem -lt $secret.Length; $secretitem++){
$value= @((Get-AzKeyVaultSecret -VaultName Atif-keyvault -Name $secret.Length.ToString()).SecretValueText)
}
for($s=0; $s -lt $secret.Length; $s++){ 

for($i = 0; $i -lt $secret.Length; $i++){
    if($s -ne $i){ continue
    }
Write-Output "$($secret[$s].Name) = $($value[$i])" >> C:\filename.txt}}