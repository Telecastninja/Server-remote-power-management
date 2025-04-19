REM Start_Server.bat
REM Purpose: Sends a Wake-on-LAN packet to start server
@echo off
REM Fill out bracked parts with your information
echo Sending Wake-on-LAN signal to <YOUR_SERVER_HOSTNAME> (<YOUR_SERVER_MAC>)...
<CLIENT_CONTROL_FOLDER_PATH>\Files\WakeMeOnLan.exe /wakeup <YOUR_SERVER_MAC>
echo Signal sent.
pause
