Connect -MgGraph -Scopes User.Read.All
Get-MgContext
Get-MgUsers -All
New-Item -ItemType Directory -Force -Path "$HOME\Desktop\Entra ID\Inventoryaccount"
Test-Path "$HOME\Desktop\Entra ID\Inventoryaccount"
Get-MgUser -All -Property DisplayName,UserPrincipalName,AccountEnabled |
Select-Object DisplayName,UserPrincipalName,AccountEnabled |
Export-Csv "$HOME\Desktop\Entra ID\Inventoryaccount\Users.csv" -NoTypeInformation -Encoding UTF8
