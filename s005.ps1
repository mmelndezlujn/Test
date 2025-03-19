# Authenticate as the Automation Account's Managed Identity
Connect-AzAccount -Identity | Out-Null

# Obtain the access token for Azure Management API
$token = (Get-AzAccessToken -ResourceUrl "https://vault.azure.net").Token

# Output the token (for debugging purposes)
Write-Output $token
