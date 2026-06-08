# Define the exact names of your workflows
$workflows = @("NewMagnet_Miguel_Parallel.bonsai", "NewMagnet_Miguel_Sinusoid.bonsai")

# Randomize the order of the array
$shuffled = $workflows | Get-Random -Count $workflows.Length

# Path to Bonsai (Removed the $env: prefix here)
$bonsaiPath = "C:\Users\Utilizador\Documents\GitHub\BonsaiClub\VrArena\bonsai\Bonsai.exe"

foreach ($wf in $shuffled) {
    Write-Host "Starting: $wf..."
    
    # Start Bonsai in Application Mode and wait for it to finish
    Start-Process -FilePath $bonsaiPath -ArgumentList "$wf --no-editor" -Wait -NoNewWindow
    
    Write-Host "Finished: $wf"
}

Write-Host "All workflows completed!"