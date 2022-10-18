# bundle an apt package and all its dependencies in a tar to deploy

- possible to deploy on compromised host with no external internet access
- get all dependencies for package
- compress all packages into one tar archive

```
apt-cache depends --recurse --no-recommends --no-suggests --no-conflicts --no-breaks --no-replaces --no-enhances bettercap | grep "^\w" | sort -u
# | xargs apt-get download 

# compress all packages into one tar archive
tar -czvf bettercap-pkg.tar *.deb
```

` zet/20221018125400/README.md `

# Related

- [20221018174628](/zet/20221018174628/README.md) tar command
- [20221013194055](/zet/20221013194055/README.md) concept of installing something
- [20221008215400](/zet/20221008215400/README.md) file
- [20221006025730](/zet/20221006025730/README.md) apt repositories
- [20221006025356](/zet/20221006025356/README.md) linux
- [20221003150140](/zet/20221003150140/README.md) apt package
- [20221012171100](/zet/20221012171100/README.md) recently created nodes hub
- [20221006213130](/zet/20221006213130/README.md) hacking / CTF platforms
- [20221017180938](/zet/20221017180938/README.md) hacking or enumeration tool
- [20221007220451](/zet/20221007220451/README.md) hacking notes hub
- [20221014190134](/zet/20221014190134/README.md) kb file named kb/linux/deb-dependencies.md

Tags:

    #idea #trick #apt #post
