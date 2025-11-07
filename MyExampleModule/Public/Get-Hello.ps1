function Get-Hello {
    <#
    .SYNOPSIS
    Gibt eine einfache Begrüßung aus.

    .DESCRIPTION
    Diese Funktion gibt den Text "Hello, World!" zurück.
    Sie dient als Beispiel für ein PowerShell-Modul mit Hilfeinformationen.

    .EXAMPLE
    Get-Hello
    # Gibt "Hello, World!" zurück.

    .NOTES
    Autor: Philip Lorenz
    Version: 1.0.0
    #>

    [CmdletBinding()]
    param()

    "Hello, World!"
}
