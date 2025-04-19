REM NOTES
REM Stop_Server.bat
REM Purpose: Sends a remote shutdown command to server
REM Server IP: 
REM Auth User: 
REM Auth Key: 
REM Shutdown key: (PPK file)

@echo off
REM Fill out bracketed part with your information
echo Sending Shutdown Signal to <YOUR_SERVER_HOSTNAME>.local...
REM Note: If <YOUR_SERVER_HOSTNAME>.local does not work, replace it in the plink command below with your server's specific IP address (<FINAL_SERVER_IP>).
<CLIENT_CONTROL_FOLDER_PATH>\Files\plink.exe -i <CLIENT_CONTROL_FOLDER_PATH>\Files\<YOUR_ADMIN_USER>_shutdown_key.ppk -batch <YOUR_ADMIN_USER>@ <YOUR_SERVER_HOSTNAME>.local sudo poweroff
echo Signal Sent. Please wait for server to power down.
pause

