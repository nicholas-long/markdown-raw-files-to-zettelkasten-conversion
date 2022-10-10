# why do i have to export this line in bash or it does not work as intended

```bash
 177   │>>>>>> export answer=$(cat $selection) # have to export this or if does not work as intended - why?
 178   │       if [ "$answer" == "" ]; then
 179   │         exit 0
 180   │       fi
 181   │       if [ "$answer" == "quitter" ]; then
 182   │         exit 0
 183   │       fi
 184   │       $prog $answer
 185   │       rm "$selection"
 186   │     done
 187   │     ;;
```

` zet/20221010164408/README.md `

# Related

- 20221003151330
- 20221003151331
- 20221008042334
- 20221003150098
- 20221006032546
- 20221003151299

Tags:

    #todo #idea
