# Import-Modul für Active Directory
Import-Module ActiveDirectory

# Pfad zur CSV-Datei
$csvPath = "./user.csv"


# CSV-Datei einlesen
$users = Import-Csv -Path $csvPath

foreach ($user in $users) {
    try {
        # Anzeigen, welcher Benutzer erstellt wird
        Write-Host "Erstelle Benutzer: $($user.FirstName) $($user.LastName)" -ForegroundColor Cyan

        # Neues Benutzerobjekt erstellen
        New-ADUser `
            -GivenName $user.FirstName `
            -Surname $user.LastName `
            -SamAccountName $user.SamAccountName `
            -UserPrincipalName "$($user.SamAccountName)@contoso.local" `
            -Name "$($user.FirstName) $($user.LastName)" `
            -AccountPassword (ConvertTo-SecureString $user.Password -AsPlainText -Force) `
            -Enabled $true `
            -ChangePasswordAtLogon $true

        Write-Host "Benutzer $($user.SamAccountName) erfolgreich erstellt." -ForegroundColor Green
    }
    catch {
        Write-Host "Fehler beim Erstellen von $($user.SamAccountName): $_" -ForegroundColor Red
    }
}
