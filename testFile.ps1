$database = 'John'
$server = '.'
$table = 'dbo.Table_5'

#Test to see if file was imported
Invoke-Sqlcmd -Database $database -ServerInstance $server -Query "select * from $table"