# Alle Public-Funktionen laden
Get-ChildItem -Path $PSScriptRoot\Public\*.ps1 | ForEach-Object {
    . $_.FullName
}

# Alle Funktionen exportieren
Export-ModuleMember -Function (Get-ChildItem -Path $PSScriptRoot\Public\*.ps1 |
    ForEach-Object { [System.IO.Path]::GetFileNameWithoutExtension($_.Name) })
