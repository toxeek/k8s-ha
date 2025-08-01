### NOTES

Tested with Debian 12. I'd setup the vms with a local user named "tricky"
To setup the vms, I need to:
1/ su -
2/ hostnamectl set-hostname hostname_here
3/ usermod -aG sudo tricky
3.1/ visudo
( change the %sudo group entry to NOPASSWD: ALL )
4/ apt install -y ssh
5/ setup static ip
7/ reboot
8/ ip a
( make a note of the ip and the iface name, e.g: enp0s3 )

Now from the ansible controller machine:
(for every vm )
1/ ssh-copy-id tricky@vm_ip

Now change in the plabook 05-* the iface name from enp0s3 to the one noted down in the ip a command above. Change also the hosts file and vars.yaml accordingly.

Now run 
```bash
$ make cluster

Done.

