# Remediation Script for Memory Integrity

## Problem

Our client PCs had memory integrity turned off and we were unable to turn it back on. Windows Security said to fix broken drivers, but did not list any in the following window.

## Solution

Add a registry key to **HKLM:\SYSTEM\CurrentControlSet\Control\DeviceGuard\Scenarios\HypervisorEnforcedCodeIntegrity**, and DWORD properties for **Enabled** (1), **EnabledBootId** (0), and **WasEnabledBy** (1).

## Detection

The detection script will see if the **HKLM:\SYSTEM\CurrentControlSet\Control\DeviceGuard\Scenarios\HypervisorEnforcedCodeIntegrity** key exists, and check for the **Enabled** property having a value of **1**. This script will output "Enabled" or "Disabled" depending upon the outcome of the checks.

## Remediation

The remediation script will create the **HKLM:\SYSTEM\CurrentControlSet\Control\DeviceGuard\Scenarios\HypervisorEnforcedCodeIntegrity** key, and create the values for **Enabled**, **EnabledBootId**, and **WasEnabledBy**. This script will output only on errors, but will print a single line with the exception's message.

## Use with Intune
Both scripts are intended for use via Intune's remediation feature, and use `Write-Output` so any information can be reviewed in Intune.
