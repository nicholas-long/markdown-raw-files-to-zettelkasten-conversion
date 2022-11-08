# desktop notification reminders in crontab with notify-send

- the reason for figuring this out in the first place as a reminder not to "run down rabbit holes"
```
* * * * * /bin/bash -c "DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/1000/bus /usr/bin/notify-send -i appointment -c 'im' 'Keep Working'"
```

` zet/20221003150195/README.md `

# Related

- [20221014190135](/zet/20221014190135/README.md) kb file named kb/linux/notify-send-crontab-reminder.md
- [20221015024515](/zet/20221015024515/README.md) concept of repeating something periodically
- [20221012070318](/zet/20221012070318/README.md) linux terminal
- [20221009005402](/zet/20221009005402/README.md) preparing for the OSCP exam
- [20221008061845](/zet/20221008061845/README.md) workflow
- [20221006025356](/zet/20221006025356/README.md) linux
- [20221003151299](/zet/20221003151299/README.md) bash tricks

Tags:

    #trick #linux #bash #cron
