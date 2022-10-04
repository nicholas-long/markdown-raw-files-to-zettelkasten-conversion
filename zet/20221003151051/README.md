# set date to match Active Directory server with ntpdate
```bash
sudo apt install ntpsec-ntpdate
# query date
ntpdate -q $IP
# update local date to match server
sudo ntpdate $IP
```

# References

Tags:
    #assorted
