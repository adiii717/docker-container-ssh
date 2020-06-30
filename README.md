# docker-container-ssh
Allow container to SSH in docker-compose networking and outside of the network

## To build container
```
docker-compose build
```

### To run and test ssh between container

```
./test.ss
```

### Output of test script

```
docker-ssh:$./test.sh 
start docker-compose
Creating network "docker-ssh-compose_my-ntwk" with the default driver
Creating prod-db ... done
Creating f-db    ... done
Creating p-app   ... done
Creating f-app   ... done
list of containers
 Name                Command               State         Ports       
---------------------------------------------------------------------
f-app     /bin/sh -c service ssh sta ...   Up      0.0.0.0:22->22/tcp
f-db      /bin/sh -c service ssh sta ...   Up      22/tcp            
p-app     /bin/sh -c service ssh sta ...   Up      22/tcp            
prod-db   /bin/sh -c service ssh sta ...   Up      22/tcp            
starting ssh test from f-db to f-app
The authenticity of host 'f-app (172.20.0.5)' can't be established.
ECDSA key fingerprint is fc:21:52:de:34:2f:98:59:8d:b0:3d:13:fc:d1:e9:5a.
Are you sure you want to continue connecting (yes/no)? yes
Warning: Permanently added 'f-app,172.20.0.5' (ECDSA) to the list of known hosts.

The programs included with the Debian GNU/Linux system are free software;
the exact distribution terms for each program are described in the
individual files in /usr/share/doc/*/copyright.

Debian GNU/Linux comes with ABSOLUTELY NO WARRANTY, to the extent
permitted by applicable law.
ubuntu@f-app:~$ whoami
ubuntu

```

Screenshot

![img](https://raw.githubusercontent.com/Adiii717/docker-container-ssh/master/screenshot/Screenshot%20from%202020-06-30%2005-22-57.png)
