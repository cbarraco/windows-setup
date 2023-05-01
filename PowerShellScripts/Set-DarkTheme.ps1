[CmdletBinding()]
param (
    
)

begin {
    
}

process {
    $items = @{
        "ColorPrevalence" = 0
        "EnableTransparency" = 1
        "AppsUseLightTheme" = 0
        "SystemUsesLightTheme" = 0
    }

    foreach ($item in $items.GetEnumerator()) {
        Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" -Name $item.Key -Value $item.Value
    }

    # restart explorer.exe
    Stop-Process -Name explorer
}

end {
    
}
