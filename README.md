# A docker image for vlmcsd

## Usage:
```
docker run -d -p 1688:1688 --restart=always --name vlmcsd unionk/vlmcsd
```
## Client
### Windows
```
slmgr.vbs -upk  
slmgr.vbs -ipk XXXXX-XXXXX-XXXXX-XXXXX-XXXXX  
slmgr.vbs -skms DOCKER_IP  
slmgr.vbs -ato  
slmgr.vbs -dlv  
```
### Office x86
```
cd \Program Files (x86)\Microsoft Office\Office16  
cscript ospp.vbs /sethst:DOCKER_IP  
cscript ospp.vbs /inpkey:xxxxx-xxxxx-xxxxx-xxxxx-xxxxx  
cscript ospp.vbs /act  
cscript ospp.vbs /dstatusall  
```
### Office x86_64
```
cd \Program Files\Microsoft Office\Office16  
cscript ospp.vbs /sethst:DOCKER_IP  
cscript ospp.vbs /inpkey:xxxxx-xxxxx-xxxxx-xxxxx-xxxxx  
cscript ospp.vbs /act  
cscript ospp.vbs /dstatusall  
```
## Sources
> https://forums.mydigitallife.info/threads/50234-Emulated-KMS-Servers-on-non-Windows-platforms  
https://github.com/Wind4/vlmcsd

## GVLK keys
> Windows: https://docs.microsoft.com/en-us/windows-server/get-started/kmsclientkeys  
> Office 2013: https://technet.microsoft.com/en-us/library/dn385360.aspx  
> Office 2016 & 2019: https://technet.microsoft.com/en-us/library/dn385360(v=office.16).aspx

## Docker Link
> https://hub.docker.com/r/unionk/vlmcsd/
