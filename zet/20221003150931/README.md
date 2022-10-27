# lxd priv esc without painful build problems lxd priv esc x86

(hacktricks)
```bash
# build a simple alpine image
git clone https://github.com/saghul/lxd-alpine-builder
cd lxd-alpine-builder
sed -i 's,yaml_path="latest-stable/releases/$apk_arch/latest-releases.yaml",yaml_path="v3.8/releases/$apk_arch/latest-releases.yaml",' build-alpine
sudo ./build-alpine -a i686
```

` zet/20221003150931/README.md `

# Related

- [20221014185801](/zet/20221014185801/README.md) kb file named kb/hacking/priv-esc/lxd/lxd-priv-esc.md
- [20221003150933](/zet/20221003150933/README.md) lxd priv esc without painful build problems
- ~/kb/hacking/priv-esc/lxd/lxd-priv-esc.md
- https://book.hacktricks.xyz/

Tags:

    #hacking #privesc #lxd 
