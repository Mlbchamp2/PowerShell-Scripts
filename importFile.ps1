$database = ''
$server = '.'
$table = 'd'

#imports file into database
Import-CSV .csv | ForEach-Object { 
Invoke-Sqlcmd ` -Database $database -ServerInstance $server ` -Query "INSERT INTO $table VALUES ('$($_.)','$($_.)')"}



