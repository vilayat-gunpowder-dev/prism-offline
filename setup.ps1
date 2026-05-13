$accountsObj = @{
    accounts = @(
        @{
            entitlement = @{
                canPlayMinecraft = $true
                ownsMinecraft = $true
            }
            type = "MSA"
        }
    )
    formatVersion = 3
}
$accountsObj | ConvertTo-Json -Compress -Depth 10 | Set-Content -Path "$env:APPDATA\PrismLauncher\accounts.json" -Encoding utf8 -Force