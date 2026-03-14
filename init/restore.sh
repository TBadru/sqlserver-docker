#!/bin/bash
# Wait for SQL Server to start accepting connections
echo "Waiting for SQL Server to start..."
until /opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P "verystrongpassword" -Q "SELECT 1" &>/dev/null
do
  sleep 5
done

echo "SQL Server is up - restoring databases..."
/opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P "verystrongpassword" -i /init/restore.sql
