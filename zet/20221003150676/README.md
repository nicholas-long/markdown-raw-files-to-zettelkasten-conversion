# bloodhound run python version in docker
must use FQDN for `-dc` parameter
```bash
git clone https://github.com/fox-it/BloodHound.py
cd BloodHound.py/
docker build -t bloodhound .
cd -
docker run --rm -e "IP=$IP" -v ${PWD}:/bloodhound-data -it bloodhound

# run bloodhound-python command inside docker
bloodhound-python -c All -u user -p password -dc 'FQDNMachineName.domain.local' -d 'domain.local' -ns $IP

# use dns-tcp option if there are DNS errors
# or try adding hosts to the docker when running it
bloodhound-python -c All -u user -p password -dc 'FQDNMachineName.domain.local' -d 'domain.local' -ns $IP --dns-tcp
```

` zet/20221003150676/README.md `

# Related

- [20221006214729](/zet/20221006214729/README.md) alh4zr3d
- [20221014185927](/zet/20221014185927/README.md) kb file named kb/hacking/commands/bloodhound.md
- [20221009015558](/zet/20221009015558/README.md) docker
- [20221009005402](/zet/20221009005402/README.md) preparing for the OSCP exam
- [20221003150677](/zet/20221003150677/README.md) bloodhound
- [20221003150675](/zet/20221003150675/README.md) bloodhound run python version in docker with NTLM hashes instead of creds
- ~/kb/hacking/commands/bloodhound.md

Tags:

    #command #hacking #bloodhound #docker
