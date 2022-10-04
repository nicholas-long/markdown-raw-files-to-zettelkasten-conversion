# Test CVE-2021-4034 in a docker Dockerfile
```dockerfile
FROM ubuntu:jammy

RUN apt update
RUN apt install -y policykit-1
RUN adduser user
WORKDIR /home/user
ADD CVE2021-4034.tar.gz .

# install vulnerable deb file
ADD policykit-1_0.105-31_amd64.deb .
RUN dpkg --force-all -i policykit-1_0.105-31_amd64.deb

USER user
ENTRYPOINT [ "bash" ]
```

# Related

- [20221003150890](/zet/20221003150890/README.md) Test CVE-2021-4034 in a docker
- ~/kb/hacking/priv-esc/polkit-pkexec-CVE-2021-4034/run-in-docker.md

Tags:

    #assorted #hacking #privesc #run
