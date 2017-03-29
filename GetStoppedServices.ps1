$computers = get-adcomputer -Filter * -Properties * | select -Property OperatingSystem, Name | where -Property OperatingSystem -Like "*Windows Server*"

foreach ($computer in $computers)
{
$session = New-PSSession -ComputerName $computer.Name 


Invoke-Command -Session $session -ScriptBlock {get-service | Select Name,DisplayName,Status | Where -Property Status -EQ "Stopped"} | Export-Csv C:\Temp\StoppedServices.csv -Append

}
