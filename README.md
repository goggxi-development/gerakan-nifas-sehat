# hamil_sehat

## step deploy
### setup jks
```bash
# 1
cd android
# 2
keytool -genkey -v -keystore gns.jks -keyalg RSA -keysize 2048 -validity 10000 -alias gns
```
## JKS
```bash
# pas: gerakannifassehat
# jks: gns.jks
# First & Last Name : gns app
# organization: gns
# two-letter country: 62
```

### setup key.properties & build.gradle
### build abb
```bash
sh abb.sh
```
