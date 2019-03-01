$database = '' #Specify Database ex. Test
$server = '.'#Use . to specify the server you're on or specify unique server
$table = '' #Specify Table Name ex. dbo.Table_4

#Test to see if file was imported
Invoke-Sqlcmd -Database $database -ServerInstance $server -Query "SELECT * from $table"