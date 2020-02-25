$test = "value1"
(Get-AzKeyVaultSecret -VaultName Atif-keyvault -Name $secret).SecretValueText


Connect-AzAccount
$secret= @("value1","value2") #retrieve keys from the keyvault
for($s=0; $s -lt $secret.Length; $s++){ 
$value= @((Get-AzKeyVaultSecret -VaultName Atif-keyvault -Name value1)).SecretValueText #retrieve secrets from the keyvault
}
for($i = 0; $i -lt $secret.Length; $i++){
    for($j =0; $j -lt $value.Length; $j++){
    if($i -ne $j){ continue
    }
Write-Output "$($secret[$s].Name) = $($value[$j].Name)"}}


for($i = 0; $i -lt $key.Length; $i++){
    for($j =0; $j -lt $secret.Length; $j++){
    if($i -ne $j){ continue
    }
   Write-Output "$($key[$i].Name) = $($secret[$j].Name)" >> C:\filename.txt}} #creates a textfile filename.txt along with the output

