#Office 365' e Powershell ile bağlanma

$UserCredential = Get-Credential 
$Session = New-PSSession -ConfigurationName Microsoft.Exchange -ConnectionUri https://outlook.office365.com/powershell-liveid/ -Credential $UserCredential -Authentication Basic -AllowRedirection 
Import-PSSession $Session 

$msol servisine bağlanmak için 
$UserCredential = Get-Credential 
Connect-MsolService -Credential $UserCredential 
