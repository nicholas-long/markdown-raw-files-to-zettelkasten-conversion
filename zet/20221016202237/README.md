# script to insert snippets into cards from file content

- concept of `script to insert snippets into cards from file content`
- zet/20221006032546/insertsnippet
  - param 1: snippet ID
  - param 2: file with which to replace the snippet contents

```
#!/bin/bash

export IMPL=20221006032546
target="zet/$1/README.md"
if [ -f "$target" ]; then
  tf=$(mktemp)
  zet/$IMPL/addsnippet $target "$2" > "$tf"
  mv "$tf" "$target"
fi
```

` zet/20221016202237/README.md `

# Related

- [20221009095853](/zet/20221009095853/README.md) finished
- [20221006032546](/zet/20221006032546/README.md) my implementation of zet cmd
- [20221006054727](/zet/20221006054727/README.md) idea about zettels, commits, and scripts
- [20221026064448](/zet/20221026064448/README.md) check syntax of dash lists for tabstop 4

Tags:

    #util #bash
