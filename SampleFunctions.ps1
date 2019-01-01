function Get-ColorDetails {
    param (
        [Color]$color
    )

    $colorDetails = "ColorName='$($color.color)' ; ColorType='$($color.type)'";
    $colorCodes = "`tRGBA='$($color.code.rgba)' ; HEX='$($color.code.hex)'"

    [console]::ForegroundColor = $color.color;

    Write-Host $colorDetails;
    Write-Host $colorCodes;
    Write-Host "";

    return $colorDetails;
}

function Get-Colors {
    param (
        [string]$colorsDataString
    ) 
    $colorsJSONData = $colorsDataString | ConvertFrom-Json;

    [Colors]$colors = [Colors]::new();
    $colors.psobject.properties | ForEach-Object {
        if ($colorsJSONData.($_.Name)) {
            $colors.($_.Name) = $colorsJSONData.($_.Name)
        }
    }

    return $colors;
}