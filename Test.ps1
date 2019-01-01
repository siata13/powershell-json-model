. .\ColorsModel.ps1
. .\SampleFunctions.ps1

$data = Get-Content .\Data\sample.data.json;

[Colors]$colorsData = Get-Colors -colorsDataString $data;

foreach ($color in $colorsData.colors) {
    $colorDetails = Get-ColorDetails -color $color
}