# generate cewl wordlist from file using temporary http server
this looks kind of stupid, but it works surprisingly well
```bash
cd files # change to the dir with target files
python3 -m http.server 8000
# in another pane
cewl http://localhost:8000/ -w cewl_wordlist
```

# References
- [20221003150794](/zet/20221003150794/README.md) generate cewl wordlist from file
- ~/kb/hacking/commands/generate-cewl-wordlist.md

Tags:
    #assorted #command
