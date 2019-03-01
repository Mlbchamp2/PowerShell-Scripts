$database = '' #Specify Database ex. Test
$server = '.'#Use . to specify the server you're on or specify unique server
$table = '' #Specify Table Name ex. dbo.Table_4

#imports file into database
Import-CSV .csv | ForEach-Object { 
Invoke-Sqlcmd ` -Database $database -ServerInstance $server ` -Query "INSERT INTO $table VALUES ('$($_.)','$($_.)')"}



