$BirthYear = Read-Host "What year were you born"

switch ($BirthYear)
{
    {$_ -le 1899} {Write-Output "No idea. Just happy you're alive.`n"}
    {$_ -ge 1900 -and $_ -le 1924} {Write-Output "Gen: The G.I. Generation (Greatest Generation)`n"}
    {$_ -ge 1925 -and $_ -le 1945} {Write-Output "Gen: The Silent Generation (Lucky Few)`n"}
    {$_ -ge 1946 -and $_ -le 1965} {Write-Output "Gen: The Baby Boom Generation (Baby Boomers)`n"}
    {$_ -ge 1966 -and $_ -le 1979} {Write-Output "Gen: Generation X (Latchkey Kids)`n"}
    {$_ -ge 1980 -and $_ -le 1994} {Write-Output "Gen: Generation Y (Millennials)`n"}
    {$_ -ge 1995 -and $_ -le 2016} {Write-Output "Gen: Generation Z (Gen Next)`n"}
    {$_ -ge 2016} {Write-Output "Gen: Alpha (The iPad kids)`n"}
    default {Write-Output "Invalid birth year`n"}
}
