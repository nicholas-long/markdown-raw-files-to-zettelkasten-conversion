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

- [20221003151330](/zet/20221003151330/README.md) bash scripting check if a variable is empty concise
- [20221003151331](/zet/20221003151331/README.md) bash scripting check if a variable is empty
- [20221008042334](/zet/20221008042334/README.md) why does git ask questions instead of pulling changes
- [20221003150098](/zet/20221003150098/README.md) todo
- [20221006032546](/zet/20221006032546/README.md) my implementation of zet cmd
- [20221003151299](/zet/20221003151299/README.md) bash tricks

Tags:

    #todo #idea
