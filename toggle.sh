#!/bin/bash

REG_PATH="HKCU:\\Software\\Microsoft\\Windows\\CurrentVersion\\Internet Settings"

# Get current ProxyEnable value
current=$(powershell.exe -Command "Get-ItemPropertyValue -Path '$REG_PATH' -Name ProxyEnable")

if [ "$current" -eq 1 ]; then
    echo "Proxy is currently ON. Turning it OFF..."
    powershell.exe -Command "Set-ItemProperty -Path '$REG_PATH' -Name ProxyEnable -Value 0"
else
    echo "Proxy is currently OFF. Turning it ON..."
    powershell.exe -Command "Set-ItemProperty -Path '$REG_PATH' -Name ProxyEnable -Value 1"
fi

# Refresh settings without restarting explorer
powershell.exe -Command "RUNDLL32.EXE inetcpl.cpl,LaunchConnectionDialog"

