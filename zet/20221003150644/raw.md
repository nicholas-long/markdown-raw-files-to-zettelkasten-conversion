## all ports command
```bash
sudo nmap -p- -v -sC -sV -oA nmap.all $IP
```

### quick
```bash
sudo nmap -p- -v -sT -sC -sV --min-rate 10000 -oA nmap.all $IP
```

