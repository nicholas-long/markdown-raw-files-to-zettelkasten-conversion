# cyberpunk retro machine project enable usb serial port terminal as a service 9600 baud serial systemd service changes
9600 baud seems to fast for accurate tranfer.
lines often get cut off.
```
# Edit this line
ExecStart=-/sbin/agetty --keep-baud 115200,38400,9600 %I $TERM

# To This
ExecStart=-/sbin/agetty 9600 %I $TERM
```

# References
- [20221003150153](/zet/20221003150153/) cyberpunk retro machine project enable usb serial port terminal as a service
- ~/kb/linux/cyberpunk-retro-machine-serial-terminals.md

Tags:
    #assorted

