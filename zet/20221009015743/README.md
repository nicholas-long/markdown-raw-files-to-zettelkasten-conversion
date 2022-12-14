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

- [20221014201909](/zet/20221014201909/README.md) add lazygit to dockerfile for zet cmd
- [20221014081712](/zet/20221014081712/README.md) ways to get hacked
- [20221014071406](/zet/20221014071406/README.md) using tools together in strange / convenient ways - examples
- [20221003151268](/zet/20221003151268/README.md) Lookup missing packages with command-not-found
- [20221010142810](/zet/20221010142810/README.md) what is the right and secure way to develop with docker
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
- [20221028172836](/zet/20221028172836/README.md) symlink dockerfile
- [20221003150203](/zet/20221003150203/README.md) example docker to initialize ksql commands Dockerfile

Tags:

    #docker #file #hash #concept #hub #command #deploy
