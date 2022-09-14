# Get-MDM-Diagnostics
An automated way to get MDM diagnostics reports

These reports are needed for Microsoft support regarding Intune, they will ask for a zip folder containing the results from MdmDiagnosticsTool.exe. This automates the process. It can be put on a USB stick and run on computers still in OOBE.

My use case for this was dealing with laptops that could not be added to Intune.

Sometimes, when adding a refurbished device to an Intune tenant, an error will be thrown as described in [this Microsoft Doc page](https://docs.microsoft.com/en-us/troubleshoot/mem/intune/import-windows-autopilot-device-csv-files-errors). When one of these errors is thrown, the device needs to be checked by Microsoft support themselves. They will ask for an MDM diagnostics report, which can be generated using `MdmDiagnosticsTool.exe`. This script makes that process a little bit easier by just running a `run.bat` batch file that will execute the contents of `Get-DiagnosticsReport.ps1`.

## How to use

1. Make sure `run.bat` and `Get-DiagnosticsReport.ps1` are in the same directory.
2. Double click `run.bat`
3. Profit
