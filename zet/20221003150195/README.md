# desktop notification reminders in crontab with notify-send

- the reason for figuring this out in the first place as a reminder not to "run down rabbit holes"
```
* * * * * /bin/bash -c "DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/1000/bus /usr/bin/notify-send -i appointment -c 'im' 'Keep Working'"
```

` zet/20221003150195/README.md `

# Related

- 20221012070318

- 20221009005402

- 20221008061845

- 20221006025356

- 20221003151299

- 20221003150551


Tags:

    
