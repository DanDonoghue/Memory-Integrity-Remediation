$ErrorActionPreference = "Stop"
$registryPath = "HKLM:\SYSTEM\CurrentControlSet\Control\DeviceGuard\Scenarios\HypervisorEnforcedCodeIntegrity"
try{
    New-Item $registryPath
    New-ItemProperty -Path $registryPath -Type DWORD -Value 1 -Name Enabled
    New-ItemProperty -Path $registryPath -Type DWORD -Value 0 -Name EnabledBootId
    New-ItemProperty -Path $registryPath -Type DWORD -Value 1 -Name WasEnabledBy
    exit 0
}catch{
    $_.Exception.Message | Write-Output
    exit 1
}