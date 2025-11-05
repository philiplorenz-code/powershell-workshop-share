param (
    [string]$SearchKeyWord
)

$SearchKeyWord = "*$SearchKeyWord*"

$ErrorActionPreference = 'SilentlyContinue'
Get-ChildItem HKLM:,HKCU: -Recurse |
Get-ItemProperty |
Where-Object { $_.PSObject.Properties.Value -like $SearchKeyWord } |
ForEach-Object {
    $property = $_.PSObject.Properties.Where({$_.Value  -like $SearchKeyWord })
    [PSCustomObject]@{ Path = $_.PSPath -replace '^.*Registry::', '' ; Name = $property.Name ; Value = $property.Value }
}