# dockerfile

- commands to build a machine
- can set entrypoint and user
- entrypoint
  - command to run
  - string version -> cannot pass args in
  - yaml arg array style syntax -> arg array, can pass additinoal args to docker at runtime
- building images
  - dockerfile lines executed as commands incrementally
    - escaped newlines with `\`
  - each command creates a whole new image
    - loading the state of the machine from the image
    - running dockerfile command
      - add files
      - run system commands
    - filesystem is saved as new image
      - cached for saving build times
        - cached based on text content of previous lines of dockerfile, so changes to the top cause slower builds
  - image has a hash of content as a unique id identifier
- how machine filesystem is stored
  - which filesystem?
  - can export images to tar by unique id / hash

- example kali linux pyrit dockerfile
```
FROM kalilinux/kali-rolling

WORKDIR /opt/pyrit

RUN apt update && apt install -y python2 gcc git python2-dev libpcap-dev libssl-dev libz-dev libpq-dev
RUN git clone https://github.com/JPaulMora/Pyrit.git .
RUN sed -i 's/#define COMPILE_AESNI//g' cpyrit/cpufeatures.h

#RUN python2 -m ensurepip --upgrade
ADD https://bootstrap.pypa.io/pip/2.7/get-pip.py  /opt/get-pip.py
RUN python2 /opt/get-pip.py

# per https://github.com/arunderwood/docker-pyrit/blob/master/Dockerfile
# Pyrit v0.5.0 does not work with scapy 2.4
RUN python2 -m pip install scapy==2.3.3 psycopg2

RUN python2 setup.py install
ENTRYPOINT [ "pyrit" ]
```

` zet/20221009015743/README.md `

# Related

- [20221009021452](/zet/20221009021452/README.md) container
- https://github.com/nicholas-long/docker-collection/blob/main/kali-pyrit/Dockerfile
- [20221003151378](/zet/20221003151378/README.md) bash scripting build and run enum4linux-ng docker
- [20221003151374](/zet/20221003151374/README.md) bash scripting build and run CrackMapExec docker
- [20221003151398](/zet/20221003151398/README.md) bash scripting build and run impacket docker
- [20221003151272](/zet/20221003151272/README.md) docker compose aliases for convenience
- [20221009015032](/zet/20221009015032/README.md) let's make a dockerfile for zet cmd
- [20221008214827](/zet/20221008214827/README.md) the concept of utility or being useful
- [20221009014200](/zet/20221009014200/README.md) concept of a command
- [20221008215400](/zet/20221008215400/README.md) file

Tags:

    #docker #file #commands #hash