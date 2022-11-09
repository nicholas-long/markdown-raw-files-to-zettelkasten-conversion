# generate cewl wordlist from file using temporary http server
this looks kind of stupid, but it works surprisingly well
```bash
cd files # change to the dir with target files
python3 -m http.server 8000
# in another pane
cewl http://localhost:8000/ -w cewl_wordlist
```

` zet/20221003150793/README.md `

# Related

- [20221003150792](/zet/20221003150792/README.md) generate cewl wordlist from file plaintext with grep
- [20221014185855](/zet/20221014185855/README.md) kb file named kb/hacking/commands/generate-cewl-wordlist.md
- [20221003150794](/zet/20221003150794/README.md) generate cewl wordlist from file
- ~/kb/hacking/commands/generate-cewl-wordlist.md
- [20221003150796](/zet/20221003150796/README.md) generate cewl wordlist

Tags:

    #command #hacking #generate 
