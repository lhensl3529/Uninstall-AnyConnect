# Function to uninstall Cisco AnyConnect
function Uninstall-AnyConnect {
    # Try to get the package with Get-Package
    $package = Get-Package -Name "*AnyConnect*" -ErrorAction SilentlyContinue

    # Check if the package exists
    if ($package) {
        # Uninstall all versions with -Force to handle any lingering dependencies
        $package | Uninstall-Package -Force -AllVersions -Confirm:$false
        Write-Output "Cisco AnyConnect has been uninstalled."
    } else {
        Write-Output "Cisco AnyConnect is not installed on this system."
    }
}

# Run the function
Uninstall-AnyConnect
