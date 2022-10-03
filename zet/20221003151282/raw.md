### example solution to programming challenge in bash
https://www.geeksforgeeks.org/topological-sorting/
```bash
#!/bin/bash
cat << EOF | tsort
5 2
5 0
4 0
4 1
2 3
3 1
EOF
```
