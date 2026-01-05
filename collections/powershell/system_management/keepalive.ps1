function checkend($endtime){
    if((Get-Date) -ge $endtime){
        return $false
    }
    return $true
}

Clear-Host

$start = Get-Date

$minutes = Read-Host "Enter the number of minutes to keep the script running (default: 90 minutes):"
if ([string]::IsNullOrWhiteSpace($minutes)) {
    $minutes = 90
} else {
    $minutes = [int]$minutes
}

$end = $start.AddMinutes($minutes)
$continue = $true

Echo "Keep your computer awake with scroll lock | start $start | end $end"

$confirmation = Read-Host "Press 'Y' to continue and keep your computer awake. Press any other key to exit."

if ($confirmation -eq 'Y' -or $confirmation -eq 'y'){
    Echo "Starting the script..."
    Echo "Timestamp: $(Get-Date)"

    $WShell = New-Object -ComObject "Wscript.Shell"

    while ($continue){
        $WShell.SendKeys("{SCROLLLOCK}")
        if ($continue -eq $true){
            Start-Sleep -Milliseconds 100
            $WShell.SendKeys("{SCROLLLOCK}")
            Start-Sleep -Seconds 240
        }
        $continue = checkend($end)
        Echo "Checking time: $(Get-Date) | $continue"
    }
    
    echo "Script has completed succesfully"
} else {
    Echo "Exiting Script no valid value has been entered."
}
