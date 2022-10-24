# drop first column with awk

- awk script to drop the first column

```awk
{for (n=1;n<NF;n++) $n=$(n+1); NF--}
{print}
```

` zet/20221024070910/README.md `

# Related

- [20221003151338](/zet/20221003151338/README.md) awk scripting
- [20221013222124](/zet/20221013222124/README.md) concept hub for tricks and tips
- [20221003151277](/zet/20221003151277/README.md) linux data science utilities
- [20221012171100](/zet/20221012171100/README.md) recently created nodes hub

Tags:

    #idea #awk #trick
