<#
    
    Author: Connor Hudson
    Date: 14-Sept-2022

    Powershell script to grab MDM diagnostics for Microsoft support regarding Intune

#>


$CurrentWorkingDirectory = (Get-Location).Path

$DiagnosticsLogFileName = "MDMDiagReport.zip"
$DiagnosticsLogPath = "$CurrentWorkingDirectory\$DiagnosticsLogFileName"


if (Test-Path $DiagnosticsLogPath) {
    Write-Host "File already exists, deleting old file." -ForegroundColor Green -BackgroundColor Black
    Remove-Item "$CurrentWorkingDirectory\$DiagnosticsLogFileName" 
    Write-Host "File removed, Now generating new MDM diagnostics report..." -ForegroundColor Green -BackgroundColor Black

    MdmDiagnosticsTool.exe -area "DeviceEnrollment;DeviceProvisioning;Autopilot" -zip "$DiagnosticsLogPath"
}

else {
    Write-Host "No diagnostics report found, creating a new one..." -ForegroundColor Green -BackgroundColor Black

    MdmDiagnosticsTool.exe -area "DeviceEnrollment;DeviceProvisioning;Autopilot" -zip "$DiagnosticsLogPath"
}
