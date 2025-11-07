@{
    RootModule        = 'MyExampleModule.psm1'
    ModuleVersion     = '1.0.0'
    Author            = 'Philip Lorenz'
    CompanyName       = 'philiplorenz.com'
    Description       = 'Ein Beispielmodul mit zwei Dummy-Funktionen.'
    PowerShellVersion = '5.1'
    FunctionsToExport = @('Get-Hello', 'Get-Goodbye')
}
