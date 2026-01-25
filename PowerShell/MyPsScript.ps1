$BYear = Read-Host "What year were you born"

switch ($BYear)
{
    {$BYear -le 1899} {Write-Output "No idea. Just happy you're alive.`n"}
    {$BYear -ge 1900 -and $BYear -le 1924} {Write-Output "Gen: The G.I. Generation (Greatest Generation)`n"}
    {$BYear -ge 1925 -and $BYear -le 1945} {Write-Output "Gen: The Silent Generation (Lucky Few)`n"}
    {$BYear -ge 1946 -and $BYear -le 1965} {Write-Output "Gen: The Baby Boom Generation (Baby Boomers)`n"}
    {$BYear -ge 1966 -and $BYear -le 1979} {Write-Output "Gen: Generation X (Latchkey Kids)`n"}
    {$BYear -ge 1980 -and $BYear -le 1994} {Write-Output "Gen: Generation Y (Millennials)`n"}
    {$BYear -ge 1995 -and $BYear -le 2016} {Write-Output "Gen: Generation Z (Gen Next)`n"}
    {$BYear -ge 2016} {Write-Output "Gen: Alpha (The iPad kids)`n"}
    default {Write-Output "Invalid birth year`n"}
}


switch ($color) {
    "red"  { "You chose red" }
    "blue" { "You chose blue" }
    "green" { "You chose green" }
    default { 
        Write-Host "I don't know this color"
        exit 1
    }
}
