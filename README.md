# Simple-remote-on-off-for-Ubuntu-fileshare

My first (complete and working) project Ain't gonna lie, I had fun doing this and I will try more advanced projects in the future.

This was made to solve a very specific real world problem for a very specific situation by a person who had never built anything before this. It is for all intents and purposes a hobbyist project where I try to solve a problem for people who don't even know how to access a computer or server remotely.

The intended user's technical prowess was a significant hurdle magnified by my own inaptitude. But here it is in all its being(?)

The intended purpose of this unholy amalgamation of violent disregard for best practices is to make a simple local file share folder, removing the constant USB chasing with easy-to-use start and stop functions to avoid unnecessary power usage when not in use – for people for whom just want two easy buttons to press, and security is tertiary.

This project had two key goals it had to reach; it had to be simple enough for me to execute without much prior knowledge and even simpler for the end user to use. 
As I am writing this, I believe I have managed to do both.

The foundation laid by all the software engineers and coders that made this project possible for me to execute, I thank you. 
This guide is mainly made as practice and is not necessarily meant to be followed or installed by anyone.

Security Concerns

WARNING: This guide intentionally prioritizes simplicity and ease of use over standard security practices. It is designed for use on a trusted local network where security is a secondary concern. Do NOT use this setup in untrusted environments or expose the server directly to the internet. By following this guide, you accept the following known security risks:

Passwordless Remote Shutdown: The remote shutdown method uses an SSH key without a passphrase and configures sudo to allow the poweroff command without requiring a password. This means: Anyone gaining access to the specific private key file (.ppk) on your client PC can shut down the server. If the client PC itself is compromised, the server could be shut down maliciously. Mitigation: Protect the .ppk file diligently on your client computer.
Unencrypted SSH Key: The SSH private key (.ppk file) is generated without a passphrase for automation convenience. Standard security practices recommend using a passphrase to protect the key file itself, which this guide skips.

Basic Service Configuration: This guide implements only basic configurations for SSH and Samba (file sharing). It does not include common security hardening steps such as: Configuring a host firewall (like ufw) on the server. Advanced SSH server security tuning. Fine-grained Samba share permissions or security options beyond the essentials for basic access control.
Assumption of Trusted Network: The entire setup assumes your local network (behind your router) is a trusted environment.

Uploaded not for use - but perhaps if one might be so lucky as to be granted a nugget of wisdom or two. 
To be clear you can use it if you want to, but in most scenarios there are better solutions.
