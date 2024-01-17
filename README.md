# docker

_Cantiner biuld_
```cmd
docker build -t app .
```
```cmd
docker run -d -p 8086:8086 -p 443:443 --name web app
```
```cmd
docker ps 
docker logs web
```
_Access webpage_

```cmd
# linux terminal

curl -I http://dcm4che.januo.io:8086
curl -k https://dcm4che.januo.io:443
curl -k https://dcm4che.januo.io
```
_Go to Browser_

```web
https://dcm4che.januo.io/
```
