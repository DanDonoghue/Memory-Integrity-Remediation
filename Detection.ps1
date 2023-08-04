if(
    (Test-Path HKLM:\SYSTEM\CurrentControlSet\Control\DeviceGuard\Scenarios\HypervisorEnforcedCodeIntegrity) -and
    ((Get-ItemProperty HKLM:\SYSTEM\CurrentControlSet\Control\DeviceGuard\Scenarios\HypervisorEnforcedCodeIntegrity\).Enabled -eq 1)
){
    Write-Output "Enabled"
    #exit 0
}else{
    Write-Output "Disabled"
    #exit 1
}