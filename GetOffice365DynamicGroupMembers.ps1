#Office 365 de Dinamik Grup Üyelerinin Listelenmesi

$dGroup = Get-DynamicDistributionGroup -Identity "My Grop" 
get-recipient -RecipientPreviewFilter $dGroup.RecipientFilter -ResultSize Unlimited | Select Name, PrimarySmtpAddress | Export-Csv C:\Temp\AllMembers.csv
