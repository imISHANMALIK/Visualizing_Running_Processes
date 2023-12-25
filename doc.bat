@echo off
( 
echo "Process Name", PID, Session Name, Session#, Mem Usage
for /L %%A in (1,1,10) do (
tasklist /FO CSV | findstr /V "INFO:"
timeout /t 2 /nobreak > NUL
)
) >output.csv