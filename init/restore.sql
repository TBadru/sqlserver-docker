RESTORE DATABASE AdventureWorks
FROM DISK = '/var/opt/mssql/backups/AdventureWorks.bak'
WITH MOVE 'AdventureWorks2022' TO '/var/opt/mssql/data/AdventureWorks.mdf',
     MOVE 'AdventureWorks2022_log' TO '/var/opt/mssql/data/AdventureWorks_log.ldf',
     REPLACE;
