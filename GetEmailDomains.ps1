#Get Domain of Email Adresses

$mg = Import-csv -Path C:\temp\MG01.csv

$mgName = $mg.Name
$domains = @()

foreach ($n in $mgName)
{
   $domain = $n.Split("@")[1]
   $domains += $domain 
   
    
}

$domains | Out-File "c:\temp\Domainsall.csv" -Append

$alldomains = Import-Csv -Path C:\Temp\Domainsall.csv
