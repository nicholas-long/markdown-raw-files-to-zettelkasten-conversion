## enable usb serial port terminal as a service
ensure /dev/ttyUSB0 is connected.
```bash
sudoedit /lib/systemd/system/serial-getty@.service
# make changes
systemctl daemon-reload
systemctl enable serial-getty@ttyUSB0.service
```

### 9600 baud serial systemd service changes
9600 baud seems to fast for accurate tranfer.
lines often get cut off.
```
# Edit this line
ExecStart=-/sbin/agetty --keep-baud 115200,38400,9600 %I $TERM

# To This
ExecStart=-/sbin/agetty 9600 %I $TERM
```

### restart service if terminal disconnected
```bash
systemctl restart serial-getty@ttyUSB0.service
```

