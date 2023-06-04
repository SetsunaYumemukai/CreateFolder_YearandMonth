$myPath = Split-Path -Path $MyInvocation.MyCommand.Path -Parent

powershell -NoProfile -ExecutionPolicy Bypass -File (Join-Path -Path $myPath -ChildPath "CreateFolder_YearandMonth.ps1")
