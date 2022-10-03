### pwntools flat pack buffer offsets
example at offset 500 in buffer
```python
payload = flat({
    500: JMP_ESP,
    504: buf
})
```

