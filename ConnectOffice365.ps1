#Office 365' e Powershell ile bağlanma

$UserCredential = Get-Credential 
$Session = New-PSSession -ConfigurationName Microsoft.Exchange -ConnectionUri https://outlook.office365.com/powershell-liveid/ -Credential $UserCredential -Authentication Basic -AllowRedirection 
Import-PSSession $Session 

#msol servisine bağlanmak için 
$UserCredential = Get-Credential 
Connect-MsolService -Credential $UserCredential 

#Sharepoint Servisine Bağlanmak için 
Import-Module Microsoft.Online.SharePoint.PowerShell -DisableNameChecking 
Connect-SPOService -Url https://domain-admin.sharepoint.com -credential $credential 
 
#Skype for Business Servisine Bağlanmak için  
Import-Module SkypeOnlineConnector 
$SkypeSession = New-CsOnlineSession -Credential $credential 
Import-PSSession $SkypeSession 
 
