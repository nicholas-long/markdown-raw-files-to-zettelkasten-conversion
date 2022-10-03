# socat
## port forwarding with socat
Forward port 80 to 445
```bash
socat TCP-LISTEN:80,fork TCP:127.0.0.1:445
```

## execute program
### bind shell
```bash
socat TCP4-LISTEN:8081,fork exec:/bin/sh
```

## listen fork print to stdout
```bash
socat TCP-LISTEN:1234,fork stdout
```

