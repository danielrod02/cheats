<div align="center"><img src="img-pwsh/pwsh-logo.png" alt="pwsh Logo"></div>  

  

***THIS CHEATSHEET IS WRITTEN BASED ON PWSH 7.0.3***

# List of builtins

## Modules

The following modules are imported by default on every session:

```pwsh
ModuleType Version    PreRelease Name                                ExportedCommands
---------- -------    ---------- ----                                ----------------
Manifest   7.0.0.0               Microsoft.PowerShell.Management     {Add-Content, Clear-Content, Clear-Item, Clear-ItemProperty…}
Manifest   7.0.0.0               Microsoft.PowerShell.Utility        {Add-Member, Add-Type, Clear-Variable, Compare-Object…}
Script     2.0.2                 PSReadLine                          {Get-PSReadLineKeyHandler, Get-PSReadLineOption, Remove-PSReadLineKeyHandler, Set-PSRea…
```

### Microsoft.PowerShell.Management

```pwsh
CommandType     Name                                               Version    Source
-----------     ----                                               -------    ------
Cmdlet          Add-Content                                        7.0.0.0    Microsoft.PowerShell.Management
Cmdlet          Clear-Content                                      7.0.0.0    Microsoft.PowerShell.Management
Cmdlet          Clear-Item                                         7.0.0.0    Microsoft.PowerShell.Management
Cmdlet          Clear-ItemProperty                                 7.0.0.0    Microsoft.PowerShell.Management
Cmdlet          Clear-RecycleBin                                   7.0.0.0    Microsoft.PowerShell.Management
Cmdlet          Convert-Path                                       7.0.0.0    Microsoft.PowerShell.Management
Cmdlet          Copy-Item                                          7.0.0.0    Microsoft.PowerShell.Management
Cmdlet          Copy-ItemProperty                                  7.0.0.0    Microsoft.PowerShell.Management
Cmdlet          Debug-Process                                      7.0.0.0    Microsoft.PowerShell.Management
Cmdlet          Get-ChildItem                                      7.0.0.0    Microsoft.PowerShell.Management
Cmdlet          Get-Clipboard                                      7.0.0.0    Microsoft.PowerShell.Management
Cmdlet          Get-ComputerInfo                                   7.0.0.0    Microsoft.PowerShell.Management
Cmdlet          Get-Content                                        7.0.0.0    Microsoft.PowerShell.Management
Cmdlet          Get-HotFix                                         7.0.0.0    Microsoft.PowerShell.Management
Cmdlet          Get-Item                                           7.0.0.0    Microsoft.PowerShell.Management
Cmdlet          Get-ItemProperty                                   7.0.0.0    Microsoft.PowerShell.Management
Cmdlet          Get-ItemPropertyValue                              7.0.0.0    Microsoft.PowerShell.Management
Cmdlet          Get-Location                                       7.0.0.0    Microsoft.PowerShell.Management
Cmdlet          Get-Process                                        7.0.0.0    Microsoft.PowerShell.Management
Cmdlet          Get-PSDrive                                        7.0.0.0    Microsoft.PowerShell.Management
Cmdlet          Get-PSProvider                                     7.0.0.0    Microsoft.PowerShell.Management
Cmdlet          Get-Service                                        7.0.0.0    Microsoft.PowerShell.Management
Cmdlet          Get-TimeZone                                       7.0.0.0    Microsoft.PowerShell.Management
Cmdlet          Invoke-Item                                        7.0.0.0    Microsoft.PowerShell.Management
Cmdlet          Join-Path                                          7.0.0.0    Microsoft.PowerShell.Management
Cmdlet          Move-Item                                          7.0.0.0    Microsoft.PowerShell.Management
Cmdlet          Move-ItemProperty                                  7.0.0.0    Microsoft.PowerShell.Management
Cmdlet          New-Item                                           7.0.0.0    Microsoft.PowerShell.Management
Cmdlet          New-ItemProperty                                   7.0.0.0    Microsoft.PowerShell.Management
Cmdlet          New-PSDrive                                        7.0.0.0    Microsoft.PowerShell.Management
Cmdlet          New-Service                                        7.0.0.0    Microsoft.PowerShell.Management
Cmdlet          Pop-Location                                       7.0.0.0    Microsoft.PowerShell.Management
Cmdlet          Push-Location                                      7.0.0.0    Microsoft.PowerShell.Management
Cmdlet          Remove-Item                                        7.0.0.0    Microsoft.PowerShell.Management
Cmdlet          Remove-ItemProperty                                7.0.0.0    Microsoft.PowerShell.Management
Cmdlet          Remove-PSDrive                                     7.0.0.0    Microsoft.PowerShell.Management
Cmdlet          Remove-Service                                     7.0.0.0    Microsoft.PowerShell.Management
Cmdlet          Rename-Computer                                    7.0.0.0    Microsoft.PowerShell.Management
Cmdlet          Rename-Item                                        7.0.0.0    Microsoft.PowerShell.Management
Cmdlet          Rename-ItemProperty                                7.0.0.0    Microsoft.PowerShell.Management
Cmdlet          Resolve-Path                                       7.0.0.0    Microsoft.PowerShell.Management
Cmdlet          Restart-Computer                                   7.0.0.0    Microsoft.PowerShell.Management
Cmdlet          Restart-Service                                    7.0.0.0    Microsoft.PowerShell.Management
Cmdlet          Resume-Service                                     7.0.0.0    Microsoft.PowerShell.Management
Cmdlet          Set-Clipboard                                      7.0.0.0    Microsoft.PowerShell.Management
Cmdlet          Set-Content                                        7.0.0.0    Microsoft.PowerShell.Management
Cmdlet          Set-Item                                           7.0.0.0    Microsoft.PowerShell.Management
Cmdlet          Set-ItemProperty                                   7.0.0.0    Microsoft.PowerShell.Management
Cmdlet          Set-Location                                       7.0.0.0    Microsoft.PowerShell.Management
Cmdlet          Set-Service                                        7.0.0.0    Microsoft.PowerShell.Management
Cmdlet          Set-TimeZone                                       7.0.0.0    Microsoft.PowerShell.Management
Cmdlet          Split-Path                                         7.0.0.0    Microsoft.PowerShell.Management
Cmdlet          Start-Process                                      7.0.0.0    Microsoft.PowerShell.Management
Cmdlet          Start-Service                                      7.0.0.0    Microsoft.PowerShell.Management
Cmdlet          Stop-Computer                                      7.0.0.0    Microsoft.PowerShell.Management
Cmdlet          Stop-Process                                       7.0.0.0    Microsoft.PowerShell.Management
Cmdlet          Stop-Service                                       7.0.0.0    Microsoft.PowerShell.Management
Cmdlet          Suspend-Service                                    7.0.0.0    Microsoft.PowerShell.Management
Cmdlet          Test-Connection                                    7.0.0.0    Microsoft.PowerShell.Management
Cmdlet          Test-Path                                          7.0.0.0    Microsoft.PowerShell.Management
Cmdlet          Wait-Process                                       7.0.0.0    Microsoft.PowerShell.Management
```

### Microsoft.PowerShell.Utility

```pwsh
CommandType     Name                                               Version    Source
-----------     ----                                               -------    ------
Cmdlet          Add-Member                                         7.0.0.0    Microsoft.PowerShell.Utility
Cmdlet          Add-Type                                           7.0.0.0    Microsoft.PowerShell.Utility
Cmdlet          Clear-Variable                                     7.0.0.0    Microsoft.PowerShell.Utility
Cmdlet          Compare-Object                                     7.0.0.0    Microsoft.PowerShell.Utility
Cmdlet          ConvertFrom-Csv                                    7.0.0.0    Microsoft.PowerShell.Utility
Cmdlet          ConvertFrom-Json                                   7.0.0.0    Microsoft.PowerShell.Utility
Cmdlet          ConvertFrom-Markdown                               7.0.0.0    Microsoft.PowerShell.Utility
Cmdlet          ConvertFrom-SddlString                             7.0.0.0    Microsoft.PowerShell.Utility
Cmdlet          ConvertFrom-StringData                             7.0.0.0    Microsoft.PowerShell.Utility
Cmdlet          ConvertTo-Csv                                      7.0.0.0    Microsoft.PowerShell.Utility
Cmdlet          ConvertTo-Html                                     7.0.0.0    Microsoft.PowerShell.Utility
Cmdlet          ConvertTo-Json                                     7.0.0.0    Microsoft.PowerShell.Utility
Cmdlet          ConvertTo-Xml                                      7.0.0.0    Microsoft.PowerShell.Utility
Cmdlet          Debug-Runspace                                     7.0.0.0    Microsoft.PowerShell.Utility
Cmdlet          Disable-PSBreakpoint                               7.0.0.0    Microsoft.PowerShell.Utility
Cmdlet          Disable-RunspaceDebug                              7.0.0.0    Microsoft.PowerShell.Utility
Cmdlet          Enable-PSBreakpoint                                7.0.0.0    Microsoft.PowerShell.Utility
Cmdlet          Enable-RunspaceDebug                               7.0.0.0    Microsoft.PowerShell.Utility
Cmdlet          Export-Alias                                       7.0.0.0    Microsoft.PowerShell.Utility
Cmdlet          Export-Clixml                                      7.0.0.0    Microsoft.PowerShell.Utility
Cmdlet          Export-Csv                                         7.0.0.0    Microsoft.PowerShell.Utility
Cmdlet          Export-FormatData                                  7.0.0.0    Microsoft.PowerShell.Utility
Cmdlet          Export-PSSession                                   7.0.0.0    Microsoft.PowerShell.Utility
Cmdlet          Format-Custom                                      7.0.0.0    Microsoft.PowerShell.Utility
Cmdlet          Format-Hex                                         7.0.0.0    Microsoft.PowerShell.Utility
Cmdlet          Format-List                                        7.0.0.0    Microsoft.PowerShell.Utility
Cmdlet          Format-Table                                       7.0.0.0    Microsoft.PowerShell.Utility
Cmdlet          Format-Wide                                        7.0.0.0    Microsoft.PowerShell.Utility
Cmdlet          Get-Alias                                          7.0.0.0    Microsoft.PowerShell.Utility
Cmdlet          Get-Culture                                        7.0.0.0    Microsoft.PowerShell.Utility
Cmdlet          Get-Date                                           7.0.0.0    Microsoft.PowerShell.Utility
Cmdlet          Get-Error                                          7.0.0.0    Microsoft.PowerShell.Utility
Cmdlet          Get-Event                                          7.0.0.0    Microsoft.PowerShell.Utility
Cmdlet          Get-EventSubscriber                                7.0.0.0    Microsoft.PowerShell.Utility
Cmdlet          Get-FileHash                                       7.0.0.0    Microsoft.PowerShell.Utility
Cmdlet          Get-FormatData                                     7.0.0.0    Microsoft.PowerShell.Utility
Cmdlet          Get-Host                                           7.0.0.0    Microsoft.PowerShell.Utility
Cmdlet          Get-MarkdownOption                                 7.0.0.0    Microsoft.PowerShell.Utility
Cmdlet          Get-Member                                         7.0.0.0    Microsoft.PowerShell.Utility
Cmdlet          Get-PSBreakpoint                                   7.0.0.0    Microsoft.PowerShell.Utility
Cmdlet          Get-PSCallStack                                    7.0.0.0    Microsoft.PowerShell.Utility
Cmdlet          Get-Random                                         7.0.0.0    Microsoft.PowerShell.Utility
Cmdlet          Get-Runspace                                       7.0.0.0    Microsoft.PowerShell.Utility
Cmdlet          Get-RunspaceDebug                                  7.0.0.0    Microsoft.PowerShell.Utility
Cmdlet          Get-TraceSource                                    7.0.0.0    Microsoft.PowerShell.Utility
Cmdlet          Get-TypeData                                       7.0.0.0    Microsoft.PowerShell.Utility
Cmdlet          Get-UICulture                                      7.0.0.0    Microsoft.PowerShell.Utility
Cmdlet          Get-Unique                                         7.0.0.0    Microsoft.PowerShell.Utility
Cmdlet          Get-Uptime                                         7.0.0.0    Microsoft.PowerShell.Utility
Cmdlet          Get-Variable                                       7.0.0.0    Microsoft.PowerShell.Utility
Cmdlet          Get-Verb                                           7.0.0.0    Microsoft.PowerShell.Utility
Cmdlet          Group-Object                                       7.0.0.0    Microsoft.PowerShell.Utility
Cmdlet          Import-Alias                                       7.0.0.0    Microsoft.PowerShell.Utility
Cmdlet          Import-Clixml                                      7.0.0.0    Microsoft.PowerShell.Utility
Cmdlet          Import-Csv                                         7.0.0.0    Microsoft.PowerShell.Utility
Cmdlet          Import-LocalizedData                               7.0.0.0    Microsoft.PowerShell.Utility
Cmdlet          Import-PowerShellDataFile                          7.0.0.0    Microsoft.PowerShell.Utility
Cmdlet          Import-PSSession                                   7.0.0.0    Microsoft.PowerShell.Utility
Cmdlet          Invoke-Expression                                  7.0.0.0    Microsoft.PowerShell.Utility
Cmdlet          Invoke-RestMethod                                  7.0.0.0    Microsoft.PowerShell.Utility
Cmdlet          Invoke-WebRequest                                  7.0.0.0    Microsoft.PowerShell.Utility
Cmdlet          Join-String                                        7.0.0.0    Microsoft.PowerShell.Utility
Cmdlet          Measure-Command                                    7.0.0.0    Microsoft.PowerShell.Utility
Cmdlet          Measure-Object                                     7.0.0.0    Microsoft.PowerShell.Utility
Cmdlet          New-Alias                                          7.0.0.0    Microsoft.PowerShell.Utility
Cmdlet          New-Event                                          7.0.0.0    Microsoft.PowerShell.Utility
Cmdlet          New-Guid                                           7.0.0.0    Microsoft.PowerShell.Utility
Cmdlet          New-Object                                         7.0.0.0    Microsoft.PowerShell.Utility
Cmdlet          New-TemporaryFile                                  7.0.0.0    Microsoft.PowerShell.Utility
Cmdlet          New-TimeSpan                                       7.0.0.0    Microsoft.PowerShell.Utility
Cmdlet          New-Variable                                       7.0.0.0    Microsoft.PowerShell.Utility
Cmdlet          Out-File                                           7.0.0.0    Microsoft.PowerShell.Utility
Cmdlet          Out-GridView                                       7.0.0.0    Microsoft.PowerShell.Utility
Cmdlet          Out-Printer                                        7.0.0.0    Microsoft.PowerShell.Utility
Cmdlet          Out-String                                         7.0.0.0    Microsoft.PowerShell.Utility
Cmdlet          Read-Host                                          7.0.0.0    Microsoft.PowerShell.Utility
Cmdlet          Register-EngineEvent                               7.0.0.0    Microsoft.PowerShell.Utility
Cmdlet          Register-ObjectEvent                               7.0.0.0    Microsoft.PowerShell.Utility
Cmdlet          Remove-Alias                                       7.0.0.0    Microsoft.PowerShell.Utility
Cmdlet          Remove-Event                                       7.0.0.0    Microsoft.PowerShell.Utility
Cmdlet          Remove-PSBreakpoint                                7.0.0.0    Microsoft.PowerShell.Utility
Cmdlet          Remove-TypeData                                    7.0.0.0    Microsoft.PowerShell.Utility
Cmdlet          Remove-Variable                                    7.0.0.0    Microsoft.PowerShell.Utility
Cmdlet          Select-Object                                      7.0.0.0    Microsoft.PowerShell.Utility
Cmdlet          Select-String                                      7.0.0.0    Microsoft.PowerShell.Utility
Cmdlet          Select-Xml                                         7.0.0.0    Microsoft.PowerShell.Utility
Cmdlet          Send-MailMessage                                   7.0.0.0    Microsoft.PowerShell.Utility
Cmdlet          Set-Alias                                          7.0.0.0    Microsoft.PowerShell.Utility
Cmdlet          Set-Date                                           7.0.0.0    Microsoft.PowerShell.Utility
Cmdlet          Set-MarkdownOption                                 7.0.0.0    Microsoft.PowerShell.Utility
Cmdlet          Set-PSBreakpoint                                   7.0.0.0    Microsoft.PowerShell.Utility
Cmdlet          Set-TraceSource                                    7.0.0.0    Microsoft.PowerShell.Utility
Cmdlet          Set-Variable                                       7.0.0.0    Microsoft.PowerShell.Utility
Cmdlet          Show-Command                                       7.0.0.0    Microsoft.PowerShell.Utility
Cmdlet          Show-Markdown                                      7.0.0.0    Microsoft.PowerShell.Utility
Cmdlet          Sort-Object                                        7.0.0.0    Microsoft.PowerShell.Utility
Cmdlet          Start-Sleep                                        7.0.0.0    Microsoft.PowerShell.Utility
Cmdlet          Tee-Object                                         7.0.0.0    Microsoft.PowerShell.Utility
Cmdlet          Test-Json                                          7.0.0.0    Microsoft.PowerShell.Utility
Cmdlet          Trace-Command                                      7.0.0.0    Microsoft.PowerShell.Utility
Cmdlet          Unblock-File                                       7.0.0.0    Microsoft.PowerShell.Utility
Cmdlet          Unregister-Event                                   7.0.0.0    Microsoft.PowerShell.Utility
Cmdlet          Update-FormatData                                  7.0.0.0    Microsoft.PowerShell.Utility
Cmdlet          Update-List                                        7.0.0.0    Microsoft.PowerShell.Utility
Cmdlet          Update-TypeData                                    7.0.0.0    Microsoft.PowerShell.Utility
Cmdlet          Wait-Debugger                                      7.0.0.0    Microsoft.PowerShell.Utility
Cmdlet          Wait-Event                                         7.0.0.0    Microsoft.PowerShell.Utility
Cmdlet          Write-Debug                                        7.0.0.0    Microsoft.PowerShell.Utility
Cmdlet          Write-Error                                        7.0.0.0    Microsoft.PowerShell.Utility
Cmdlet          Write-Host                                         7.0.0.0    Microsoft.PowerShell.Utility
Cmdlet          Write-Information                                  7.0.0.0    Microsoft.PowerShell.Utility
Cmdlet          Write-Output                                       7.0.0.0    Microsoft.PowerShell.Utility
Cmdlet          Write-Progress                                     7.0.0.0    Microsoft.PowerShell.Utility
Cmdlet          Write-Verbose                                      7.0.0.0    Microsoft.PowerShell.Utility
Cmdlet          Write-Warning                                      7.0.0.0    Microsoft.PowerShell.Utility
```

### PSReadLine

```pwsh
CommandType     Name                                               Version    Source
-----------     ----                                               -------    ------
Function        PSConsoleHostReadLine                              2.0.2      PSReadLine
Cmdlet          Get-PSReadLineKeyHandler                           2.0.2      PSReadLine
Cmdlet          Get-PSReadLineOption                               2.0.2      PSReadLine
Cmdlet          Remove-PSReadLineKeyHandler                        2.0.2      PSReadLine
Cmdlet          Set-PSReadLineKeyHandler                           2.0.2      PSReadLine
Cmdlet          Set-PSReadLineOption                               2.0.2      PSReadLine
```

This is the list of all the avaliables modules (`Get-Module -ListAvaliable`) that can be imported:

```pwsh
    Directory: C:\program files\powershell\7\Modules

ModuleType Version    PreRelease Name                                PSEdition ExportedCommands
---------- -------    ---------- ----                                --------- ----------------
Manifest   7.0.0.0               CimCmdlets                          Core      {Get-CimAssociatedInstance, Get-CimClass, Get-CimInstance, Get-CimSession…}
Manifest   1.2.5                 Microsoft.PowerShell.Archive        Desk      {Compress-Archive, Expand-Archive}
Manifest   7.0.0.0               Microsoft.PowerShell.Diagnostics    Core      {Get-WinEvent, New-WinEvent, Get-Counter}
Manifest   7.0.0.0               Microsoft.PowerShell.Host           Core      {Start-Transcript, Stop-Transcript}
Manifest   7.0.0.0               Microsoft.PowerShell.Management     Core      {Add-Content, Clear-Content, Get-Clipboard, Set-Clipboard…}
Manifest   7.0.0.0               Microsoft.PowerShell.Security       Core      {Get-Acl, Set-Acl, Get-PfxCertificate, Get-Credential…}
Manifest   7.0.0.0               Microsoft.PowerShell.Utility        Core      {Export-Alias, Get-Alias, Import-Alias, New-Alias…}
Manifest   7.0.0.0               Microsoft.WSMan.Management          Core      {Disable-WSManCredSSP, Enable-WSManCredSSP, Get-WSManCredSSP, Set-WSManQuickC…
Script     1.4.7                 PackageManagement                   Desk      {Find-Package, Get-Package, Get-PackageProvider, Get-PackageSource…}
Script     2.2.4.1               PowerShellGet                       Desk      {Find-Command, Find-DSCResource, Find-Module, Find-RoleCapability…}
Script     2.0.5                 PSDesiredStateConfiguration         Core      {Configuration, New-DscChecksum, Get-DscResource, Invoke-DscResource}
Script     7.0.0.0               PSDiagnostics                       Core      {Disable-PSTrace, Disable-PSWSManCombinedTrace, Disable-WSManTrace, Enable-PS…
Script     2.0.2                 PSReadLine                          Desk      {Get-PSReadLineKeyHandler, Set-PSReadLineKeyHandler, Remove-PSReadLineKeyHand…
Binary     2.0.3                 ThreadJob                           Desk      Start-ThreadJob

    Directory: C:\Program Files\WindowsPowerShell\Modules

ModuleType Version    PreRelease Name                                PSEdition ExportedCommands
---------- -------    ---------- ----                                --------- ----------------
Script     1.0.1                 Microsoft.PowerShell.Operation.Val… Desk      {Get-OperationValidation, Invoke-OperationValidation}
Binary     1.0.0.1               PackageManagement                   Desk      {Find-Package, Get-Package, Get-PackageProvider, Get-PackageSource…}
Script     3.4.0                 Pester                              Desk      {Describe, Context, It, Should…}
Script     1.0.0.1               PowerShellGet                       Desk      {Install-Module, Find-Module, Save-Module, Update-Module…}
Script     2.0.0      beta2      PSReadline                          Desk      {Get-PSReadLineKeyHandler, Set-PSReadLineKeyHandler, Remove-PSReadLineKeyHand…

    Directory: C:\WINDOWS\system32\WindowsPowerShell\v1.0\Modules

ModuleType Version    PreRelease Name                                PSEdition ExportedCommands
---------- -------    ---------- ----                                --------- ----------------
Manifest   1.0.0.0               AppBackgroundTask                   Core,Desk {Disable-AppBackgroundTaskDiagnosticLog, Enable-AppBackgroundTaskDiagnosticLo…
Manifest   2.0.1.0               Appx                                Core,Desk {Add-AppxPackage, Get-AppxPackage, Get-AppxPackageManifest, Remove-AppxPackag…
Script     1.0.0.0               AssignedAccess                      Core,Desk {Clear-AssignedAccess, Get-AssignedAccess, Set-AssignedAccess}
Manifest   1.0.0.0               BitLocker                           Core,Desk {Unlock-BitLocker, Suspend-BitLocker, Resume-BitLocker, Remove-BitLockerKeyPr…
Manifest   2.0.0.0               BitsTransfer                        Core,Desk {Add-BitsFile, Complete-BitsTransfer, Get-BitsTransfer, Remove-BitsTransfer…}
Manifest   1.0.0.0               BranchCache                         Core,Desk {Add-BCDataCacheExtension, Clear-BCCache, Disable-BC, Disable-BCDowngrading…}
Manifest   1.0                   ConfigDefender                      Core,Desk {Get-MpPreference, Set-MpPreference, Add-MpPreference, Remove-MpPreference…}
Manifest   1.0                   Defender                            Core,Desk {Get-MpPreference, Set-MpPreference, Add-MpPreference, Remove-MpPreference…}
Manifest   1.0.2.0               DeliveryOptimization                Core,Desk {Delete-DeliveryOptimizationCache, Set-DeliveryOptimizationStatus, Get-Delive…
Manifest   1.0.0.0               DirectAccessClientComponents        Core,Desk {Disable-DAManualEntryPointSelection, Enable-DAManualEntryPointSelection, Get…
Script     3.0                   Dism                                Core,Desk {Add-AppxProvisionedPackage, Add-WindowsDriver, Add-WindowsCapability, Add-Wi…
Manifest   1.0.0.0               DnsClient                           Core,Desk {Resolve-DnsName, Clear-DnsClientCache, Get-DnsClient, Get-DnsClientCache…}
Manifest   1.0.0.0               EventTracingManagement              Core,Desk {Start-EtwTraceSession, New-EtwTraceSession, Get-EtwTraceSession, Update-EtwT…
Manifest   1.0.0.0               HgsClient                           Core,Desk {Get-HgsAttestationBaselinePolicy, Get-HgsClientConfiguration, Test-HgsClient…
Manifest   1.0.0.0               HgsDiagnostics                      Core,Desk {New-HgsTraceTarget, Get-HgsTrace, Get-HgsTraceFileData, Test-HgsTraceTarget}
Binary     2.0.0.0               Hyper-V                             Core,Desk {Add-VMAssignableDevice, Add-VMDvdDrive, Add-VMFibreChannelHba, Add-VMGpuPart…
Binary     1.1                   Hyper-V                             Core,Desk {Add-VMDvdDrive, Add-VMFibreChannelHba, Add-VMHardDiskDrive, Add-VMMigrationN…
Script     1.1.0.0               IISAdministration                   Core,Desk
Manifest   2.0.0.0               International                       Core,Desk {Get-WinDefaultInputMethodOverride, Set-WinDefaultInputMethodOverride, Get-Wi…
Manifest   1.0.0.0               Kds                                 Core,Desk {Add-KdsRootKey, Get-KdsRootKey, Test-KdsRootKey, Set-KdsConfiguration…}
Manifest   3.0.0.0               Microsoft.PowerShell.Diagnostics    Core,Desk {Get-WinEvent, Get-Counter, Import-Counter, Export-Counter…}
Manifest   1.0.0.0               Microsoft.PowerShell.LocalAccounts  Core,Desk {Add-LocalGroupMember, Disable-LocalUser, Enable-LocalUser, Get-LocalGroup…}
Manifest   3.1.0.0               Microsoft.PowerShell.Management     Core,Desk {Add-Content, Clear-Content, Clear-ItemProperty, Join-Path…}
Manifest   1.0                   MMAgent                             Core,Desk {Disable-MMAgent, Enable-MMAgent, Set-MMAgent, Get-MMAgent…}
Manifest   2.0.0.0               NetAdapter                          Core,Desk {Disable-NetAdapter, Disable-NetAdapterBinding, Disable-NetAdapterChecksumOff…
Manifest   1.0.0.0               NetConnection                       Core,Desk {Get-NetConnectionProfile, Set-NetConnectionProfile}
Manifest   1.0.0.0               NetEventPacketCapture               Core,Desk {New-NetEventSession, Remove-NetEventSession, Get-NetEventSession, Set-NetEve…
Manifest   2.0.0.0               NetLbfo                             Core,Desk {Add-NetLbfoTeamMember, Add-NetLbfoTeamNic, Get-NetLbfoTeam, Get-NetLbfoTeamM…
Manifest   1.0.0.0               NetNat                              Core,Desk {Get-NetNat, Get-NetNatExternalAddress, Get-NetNatStaticMapping, Get-NetNatSe…
Manifest   2.0.0.0               NetQos                              Core,Desk {Get-NetQosPolicy, Set-NetQosPolicy, Remove-NetQosPolicy, New-NetQosPolicy}
Manifest   2.0.0.0               NetSecurity                         Core,Desk {Get-DAPolicyChange, New-NetIPsecAuthProposal, New-NetIPsecMainModeCryptoProp…
Manifest   1.0.0.0               NetSwitchTeam                       Core,Desk {New-NetSwitchTeam, Remove-NetSwitchTeam, Get-NetSwitchTeam, Rename-NetSwitch…
Manifest   1.0.0.0               NetTCPIP                            Core,Desk {Get-NetIPAddress, Get-NetIPInterface, Get-NetIPv4Protocol, Get-NetIPv6Protoc…
Manifest   1.0.0.0               NetworkConnectivityStatus           Core,Desk {Get-DAConnectionStatus, Get-NCSIPolicyConfiguration, Reset-NCSIPolicyConfigu…
Manifest   1.0.0.0               NetworkSwitchManager                Core,Desk {Disable-NetworkSwitchEthernetPort, Enable-NetworkSwitchEthernetPort, Get-Net…
Manifest   1.0.0.0               NetworkTransition                   Core,Desk {Add-NetIPHttpsCertBinding, Disable-NetDnsTransitionConfiguration, Disable-Ne…
Manifest   1.0.0.0               PcsvDevice                          Core,Desk {Get-PcsvDevice, Start-PcsvDevice, Stop-PcsvDevice, Restart-PcsvDevice…}
Manifest   1.0.0.0               PKI                                 Core,Desk {Add-CertificateEnrollmentPolicyServer, Export-Certificate, Export-PfxCertifi…
Manifest   1.0.0.0               PnpDevice                           Core,Desk {Get-PnpDevice, Get-PnpDeviceProperty, Enable-PnpDevice, Disable-PnpDevice}
Manifest   1.1                   PrintManagement                     Core,Desk {Add-Printer, Add-PrinterDriver, Add-PrinterPort, Get-PrintConfiguration…}
Binary     1.0.11                ProcessMitigations                  Core,Desk {Get-ProcessMitigation, Set-ProcessMitigation, ConvertTo-ProcessMitigationPol…
Script     3.0                   Provisioning                        Core,Desk {Install-ProvisioningPackage, Export-ProvisioningPackage, Install-TrustedProv…
Manifest   1.0.0.0               ScheduledTasks                      Core,Desk {Get-ScheduledTask, Set-ScheduledTask, Register-ScheduledTask, Unregister-Sch…
Manifest   2.0.0.0               SecureBoot                          Core,Desk {Confirm-SecureBootUEFI, Set-SecureBootUEFI, Get-SecureBootUEFI, Format-Secur…
Manifest   2.0.0.0               SmbShare                            Core,Desk {Get-SmbShare, Remove-SmbShare, Set-SmbShare, Block-SmbShareAccess…}
Manifest   2.0.0.0               SmbWitness                          Core,Desk {Get-SmbWitnessClient, Move-SmbWitnessClient, gsmbw, msmbw…}
Manifest   1.0.0.0               StartLayout                         Core,Desk {Export-StartLayout, Import-StartLayout, Export-StartLayoutEdgeAssets, Get-St…
Manifest   2.0.0.0               Storage                             Core,Desk {Add-InitiatorIdToMaskingSet, Add-PartitionAccessPath, Add-PhysicalDisk, Add-…
Manifest   2.0.0.0               TLS                                 Core,Desk {New-TlsSessionTicketKey, Enable-TlsSessionTicketKey, Disable-TlsSessionTicke…
Manifest   1.0.0.0               TroubleshootingPack                 Core,Desk {Get-TroubleshootingPack, Invoke-TroubleshootingPack}
Manifest   2.0.0.0               TrustedPlatformModule               Core,Desk {Get-Tpm, Initialize-Tpm, Clear-Tpm, Unblock-Tpm…}
Binary     2.1.639.0             UEV                                 Core,Desk
Manifest   2.0.0.0               VpnClient                           Core,Desk {Add-VpnConnection, Set-VpnConnection, Remove-VpnConnection, Get-VpnConnectio…
Manifest   1.0.0.0               Wdac                                Core,Desk {Get-OdbcDriver, Set-OdbcDriver, Get-OdbcDsn, Add-OdbcDsn…}
Manifest   2.0.0.0               Whea                                Core,Desk {Get-WheaMemoryPolicy, Set-WheaMemoryPolicy}
Manifest   1.0.0.0               WindowsDeveloperLicense             Core,Desk {Get-WindowsDeveloperLicense, Unregister-WindowsDeveloperLicense, Show-Window…
Script     1.0                   WindowsErrorReporting               Core,Desk {Enable-WindowsErrorReporting, Disable-WindowsErrorReporting, Get-WindowsErro…
Manifest   1.0.0.0               WindowsSearch                       Core,Desk {Get-WindowsSearchSetting, Set-WindowsSearchSetting}
Manifest   1.0.0.0               WindowsUpdate                       Core,Desk Get-WindowsUpdateLog
Manifest   1.0.0.2               WindowsUpdateProvider               Core,Desk {Get-WUAVersion, Get-WULastInstallationDate, Get-WULastScanSuccessDate, Get-W…
```

## Aliases
```
CommandType     Name                                               Version    Source
-----------     ----                                               -------    ------
Alias           % -> ForEach-Object
Alias           ? -> Where-Object
Alias           ac -> Add-Content
Alias           cat -> Get-Content
Alias           cd -> Set-Location
Alias           chdir -> Set-Location
Alias           clc -> Clear-Content
Alias           clear -> Clear-Host
Alias           clhy -> Clear-History
Alias           cli -> Clear-Item
Alias           clp -> Clear-ItemProperty
Alias           cls -> Clear-Host
Alias           clv -> Clear-Variable
Alias           cnsn -> Connect-PSSession
Alias           compare -> Compare-Object
Alias           copy -> Copy-Item
Alias           cp -> Copy-Item
Alias           cpi -> Copy-Item
Alias           cpp -> Copy-ItemProperty
Alias           cvpa -> Convert-Path
Alias           dbp -> Disable-PSBreakpoint
Alias           del -> Remove-Item
Alias           diff -> Compare-Object
Alias           dir -> Get-ChildItem
Alias           dnsn -> Disconnect-PSSession
Alias           ebp -> Enable-PSBreakpoint
Alias           echo -> Write-Output
Alias           epal -> Export-Alias
Alias           epcsv -> Export-Csv
Alias           erase -> Remove-Item
Alias           etsn -> Enter-PSSession
Alias           exsn -> Exit-PSSession
Alias           fc -> Format-Custom
Alias           fhx -> Format-Hex                                  7.0.0.0    Microsoft.PowerShell.Utility
Alias           fl -> Format-List
Alias           foreach -> ForEach-Object
Alias           ft -> Format-Table
Alias           fw -> Format-Wide
Alias           gal -> Get-Alias
Alias           gbp -> Get-PSBreakpoint
Alias           gc -> Get-Content
Alias           gcb -> Get-Clipboard                               7.0.0.0    Microsoft.PowerShell.Management
Alias           gci -> Get-ChildItem
Alias           gcm -> Get-Command
Alias           gcs -> Get-PSCallStack
Alias           gdr -> Get-PSDrive
Alias           gerr -> Get-Error
Alias           ghy -> Get-History
Alias           gi -> Get-Item
Alias           gin -> Get-ComputerInfo                            7.0.0.0    Microsoft.PowerShell.Management
Alias           gjb -> Get-Job
Alias           gl -> Get-Location
Alias           gm -> Get-Member
Alias           gmo -> Get-Module
Alias           gp -> Get-ItemProperty
Alias           gps -> Get-Process
Alias           gpv -> Get-ItemPropertyValue
Alias           group -> Group-Object
Alias           gsn -> Get-PSSession
Alias           gsv -> Get-Service
Alias           gtz -> Get-TimeZone                                7.0.0.0    Microsoft.PowerShell.Management
Alias           gu -> Get-Unique
Alias           gv -> Get-Variable
Alias           h -> Get-History
Alias           history -> Get-History
Alias           icm -> Invoke-Command
Alias           iex -> Invoke-Expression
Alias           ihy -> Invoke-History
Alias           ii -> Invoke-Item
Alias           ipal -> Import-Alias
Alias           ipcsv -> Import-Csv
Alias           ipmo -> Import-Module
Alias           irm -> Invoke-RestMethod
Alias           iwr -> Invoke-WebRequest
Alias           kill -> Stop-Process
Alias           ls -> Get-ChildItem
Alias           man -> help
Alias           md -> mkdir
Alias           measure -> Measure-Object
Alias           mi -> Move-Item
Alias           mount -> New-PSDrive
Alias           move -> Move-Item
Alias           mp -> Move-ItemProperty
Alias           mv -> Move-Item
Alias           nal -> New-Alias
Alias           ndr -> New-PSDrive
Alias           ni -> New-Item
Alias           nmo -> New-Module
Alias           nsn -> New-PSSession
Alias           nv -> New-Variable
Alias           ogv -> Out-GridView
Alias           oh -> Out-Host
Alias           popd -> Pop-Location
Alias           ps -> Get-Process
Alias           pushd -> Push-Location
Alias           pwd -> Get-Location
Alias           r -> Invoke-History
Alias           rbp -> Remove-PSBreakpoint
Alias           rcjb -> Receive-Job
Alias           rcsn -> Receive-PSSession
Alias           rd -> Remove-Item
Alias           rdr -> Remove-PSDrive
Alias           ren -> Rename-Item
Alias           ri -> Remove-Item
Alias           rjb -> Remove-Job
Alias           rm -> Remove-Item
Alias           rmdir -> Remove-Item
Alias           rmo -> Remove-Module
Alias           rni -> Rename-Item
Alias           rnp -> Rename-ItemProperty
Alias           rp -> Remove-ItemProperty
Alias           rsn -> Remove-PSSession
Alias           rv -> Remove-Variable
Alias           rvpa -> Resolve-Path
Alias           sajb -> Start-Job
Alias           sal -> Set-Alias
Alias           saps -> Start-Process
Alias           sasv -> Start-Service
Alias           sbp -> Set-PSBreakpoint
Alias           scb -> Set-Clipboard                               7.0.0.0    Microsoft.PowerShell.Management
Alias           select -> Select-Object
Alias           set -> Set-Variable
Alias           shcm -> Show-Command
Alias           si -> Set-Item
Alias           sl -> Set-Location
Alias           sleep -> Start-Sleep
Alias           sls -> Select-String
Alias           sort -> Sort-Object
Alias           sp -> Set-ItemProperty
Alias           spjb -> Stop-Job
Alias           spps -> Stop-Process
Alias           spsv -> Stop-Service
Alias           start -> Start-Process
Alias           stz -> Set-TimeZone                                7.0.0.0    Microsoft.PowerShell.Management
Alias           sv -> Set-Variable
Alias           tee -> Tee-Object
Alias           type -> Get-Content
Alias           where -> Where-Object
Alias           wjb -> Wait-Job
Alias           write -> Write-Output
```

# Writing/reading data (from standard streams and files)



# Modules

A module is a package that contains members that can be used in PowerShell. Members include cmdlets, providers, scripts, functions, variables, and other tools and files. After a module is imported, you can use the module members in your session. For more information about modules, see about_Modules (About/about_Modules.md).

# Common Parameters
