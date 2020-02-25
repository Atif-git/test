Connect-AzAccount
$key= @(Get-AzKeyVaultKey -VaultName Atif-keyvault) #retrieve keys from the keyvault
$secret= @(Get-AzKeyVaultSecret -VaultName Atif-keyvault) #retrieve secrets from the keyvault

for($i = 0; $i -lt $key.Length; $i++){
    for($j =0; $j -lt $secret.Length; $j++){
    if($i -ne $j){ continue
    }
   Write-Output "$($key[$i].Name) = $($secret[$j].Name)" >> C:\filename.txt}} #creates a textfile filename.txt along with the output

