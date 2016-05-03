#Dockerized Metasploit

This is the repository for a dockerized metasploit (qkyrie/metasploit)

###Running

```
docker run --name my-metasploit -it qkyrie/metasploit
```

###starting a stopped container

```
docker start -i my-metasploit
```

###Bound Ports
We automatically bound ports 80, 4444 and 8080

```
docker run --name my-other-metasploit -it -p 127.0.0.1:80:80 -p 127.0.0.1:4444:4444 -p 127.0.0.1:8080:8080 qkyrie/metasploit
```
