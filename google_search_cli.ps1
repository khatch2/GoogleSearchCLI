Write-Host "Enter your search query: "
$query = Read-Host

$url = "https://www.google.com/search?q=$($query -replace ' ', '+')"

Start-Process $url
Write-Host "Searching for: $query"
