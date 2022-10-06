# inserting lines with sed

inserting references for zettelkasten

```bash
example="20221003150064"
sed '/Related/i ` zet/'$example'/README.md `\n' zet/$example/README.md

for example in $(cat dont_have_self ); do 
  sed -i '/Related/i ` zet/'$example'/README.md `\n' zet/$example/README.md
done
```

` zet/20221006010149/README.md `

# Related

- [20221006010531](/zet/20221006010531/README.md) sed scripts

Tags:

    #sed
