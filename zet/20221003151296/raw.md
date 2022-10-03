## check if current directory is writable
```bash
if [ -w "$(pwd)" ]; then
  echo "writing here"
fi
```
