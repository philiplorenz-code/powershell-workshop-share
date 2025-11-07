function Get-Goodbye {
    <#
    .SYNOPSIS
    Gibt eine einfache Abschiedsnachricht aus.

    .DESCRIPTION
    Diese Funktion gibt den Text "Goodbye!" zurück.
    Sie dient als zweite Dummy-Funktion im Beispielmodul.

    .EXAMPLE
    Get-Goodbye
    # Gibt "Goodbye!" zurück.

    .NOTES
    Autor: Philip Lorenz
    Version: 1.0.0
    #>

    [CmdletBinding()]
    param()

    "Goodbye!"
}
