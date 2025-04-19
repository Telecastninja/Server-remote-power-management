# Server-remote-power-management
Small but unsecure power managment for Ubuntu file server
Ubuntu File Server with simple Remote Power Control (V1.0)

The intended purpose of this unholy amalgamation of violent disregard for best practices is to make a simple local file share folder, removing the constant USB chasing 
with easy-to-use start and stop functions to avoid unnecessary power usage when not in use – for people for whom just want two easy buttons to press, and security is tertiary. 

This project had two key goals it had to reach; it had to be simple enough for me to execute without much prior knowledge and even simpler for the end user to use. 
As I am writing this, I believe I have managed to do both. 

The foundation laid by all the software engineers and coders that made this project possible for me to execute, 
I thank you. This guide is mainly made as practice and is not necessarily meant to be followed or installed by anyone.

Assumptions & Prerequisites:
Dependencies
Security concerns
Placeholders Used in this Guide:
Guide Sections:
A) Initial Server Setup & Checks	
A.1: Verify or create user	
A.2: SSH Server	
A.3: Find Network Info	
B) Network Configuration (Server & Client)	
B.1: Configure Stable Server IP  - Choose ONE method	
B.3: Install Bonjour on client PC - Recommended	
B.4: Define Connection Method	
C) Remote Shutdown Setup	
C.1: Configure Passwordless Sudo on Server	
C.2: Generate SSH Key on Client PC	
C.3: Install Public Key	
C.4: Edit Stop_Server.bat on your PC	
D) Remote Startup Setup - Wake-on-LAN (Wol)	
D.1: Enable WoL in server BIOS	
D.2: Edit Start_Server.bat on your PC	
E) File Share Setup with Samba	
E.1: Install Samba on Server	
E.2: Create Share Directory	
E.3: Create Share Group & User	
E.4: Set Directory Permissions	
E.5.a: Enter Samba Share Configuration	
E.5.b: Configure Samba Share	
E.6. Restart Samba	
E.7. Set Samba Password	
F) Client Shortcut Setup - Optional	
F.1. Prepare Client Folder	
F.2 Version A: Create Shortcuts	
F.2 Version B: Create & Pin Taskbar Shortcuts	
G) Testing	
G.1. Test Power Off	
G.2. Test Power On	
G.3. Test File Share	


Assumptions & Prerequisites:
You have a server computer with Ubuntu Server (LTS version like 22.04 recommended) already installed.
You have administrator access (a user account with sudo privileges) on the Ubuntu server.
You have a Windows client PC on the same local network as the server.
You have network infrastructure (router, switches) connecting the devices.
You can download/transfer files to the Windows client PC.


Security Concerns
WARNING: This guide intentionally prioritizes simplicity and ease of use over standard security practices. It is designed for use on a trusted local network where security is a secondary concern. Do NOT use this setup in untrusted environments or expose the server directly to the internet.
By following this guide, you accept the following known security risks:
Passwordless Remote Shutdown: The remote shutdown method uses an SSH key without a passphrase and configures sudo to allow the poweroff command without requiring a password. This means: 
Anyone gaining access to the specific private key file (.ppk) on your client PC can shut down the server.
If the client PC itself is compromised, the server could be shut down maliciously.
Mitigation: Protect the .ppk file diligently on your client computer.

Unencrypted SSH Key: The SSH private key (.ppk file) is generated without a passphrase for automation convenience. Standard security practices recommend using a passphrase to protect the key file itself, which this guide skips.
Basic Service Configuration: This guide implements only basic configurations for SSH and Samba (file sharing). It does not include common security hardening steps such as: 
Configuring a host firewall (like ufw) on the server.
Advanced SSH server security tuning.
Fine-grained Samba share permissions or security options beyond the essentials for basic access control.
Assumption of Trusted Network: The entire setup assumes your local network (behind your router) is a trusted environment.

Uploaded not for use - but perhaps if one might be so lucky as to be granted a nugget of wisdom or two
To be clear you can use it if you want to, but in most scenarios there are better solutions.
