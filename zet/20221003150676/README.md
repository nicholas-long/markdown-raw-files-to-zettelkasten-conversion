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

# References
- [20221003150677](/zet/20221003150677/) bloodhound
- [20221003150675](/zet/20221003150675/) bloodhound run python version in docker with NTLM hashes instead of creds
- ~/kb/hacking/commands/bloodhound.md

Tags:
    #assorted

