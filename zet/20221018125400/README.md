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

- [20221006213130](/zet/20221006213130/README.md) hacking / CTF platforms

- [20221017180938](/zet/20221017180938/README.md) hacking or enumeration tool

- [20221007220451](/zet/20221007220451/README.md) hacking notes hub

- [20221014190134](/zet/20221014190134/README.md) kb file named kb/linux/deb-dependencies.md

Tags:

    #idea #trick #apt #post
