# cyberpunk retro machine project enable usb serial port terminal as a service
ensure /dev/ttyUSB0 is connected.
```bash
sudoedit /lib/systemd/system/serial-getty@.service
# make changes
systemctl daemon-reload
systemctl enable serial-getty@ttyUSB0.service
```

# References
- [20221003150154](/zet/20221003150154/README.md) cyberpunk retro machine project
- [20221003150152](/zet/20221003150152/README.md) cyberpunk retro machine project enable usb serial port terminal as a service 9600 baud serial systemd service changes
- [20221003150151](/zet/20221003150151/README.md) cyberpunk retro machine project enable usb serial port terminal as a service restart service if terminal disconnected
- ~/kb/linux/cyberpunk-retro-machine-serial-terminals.md

Tags:
    #assorted #linux #cyberpunk
