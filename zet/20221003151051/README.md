# set date to match Active Directory server with ntpdate
```bash
sudo apt install ntpsec-ntpdate
# query date
ntpdate -q $IP
# update local date to match server
sudo ntpdate $IP
```

` zet/20221003151051/README.md `

# Related

- [20221007220451](/zet/20221007220451/README.md) hacking notes hub

Tags:

    #command #hacking
