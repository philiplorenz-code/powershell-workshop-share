param (
    [string]$unique_identifier = 'janisdd.vscode-edit-csv',
    [string]$version = '0.11.7'
)

# Split publisher und package
$parts = $unique_identifier -split '\.'
$publisher = $parts[0]
$package = $parts[1]

# Basis-URL
$url = "https://marketplace.visualstudio.com/_apis/public/gallery/publishers/$publisher/vsextensions/$package/$version/vspackage"

Write-Output $url