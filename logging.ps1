Install-Module PSFramework

Import-Module PSFramework


# Setting up the logging
$paramSetPSFLoggingProvider = @{
    Name         = 'logfile'
    InstanceName = 'workshop'
    FilePath     = 'C:\Logs\TaskName-%Date%.csv'
    Enabled      = $true
    Wait         = $true
}
Set-PSFLoggingProvider @paramSetPSFLoggingProvider

# Start Logging
Write-PSFMessage "Starting Script" -Level Host

# Add script code here, using Write-PSFMessage wherever you want to log
# ...

Write-PSFMessage "Script Completed"

# Wait for logging to complete
Wait-PSFMessage