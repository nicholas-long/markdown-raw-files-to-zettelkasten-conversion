# default webroots

- apache `/var/www/html`
- default webroots on debian systems - apache is default httpd implementation
- BSD systems
  - FreeBSD
    - user folders in `/home/user/public-html` will appear on server at location `/~user/`
    ```
    /usr/local/www/data
    /usr/local/www/apache22/data
    ```
  - OpenBSD - httpd server is chrooted to `/var/www/`, so document root must be in that directory or deeper.
- webroots on windows
  - xampp `C:/xampp/htdocs`

` zet/20221003150289/README.md `

# Related

- [20221003150286](/zet/20221003150286/README.md) default webroots BSD systems
- [20221014190057](/zet/20221014190057/README.md) kb file named kb/hacking/misc/web-server-default-webroots.md
- [20221007220451](/zet/20221007220451/README.md) hacking notes hub
- [20221003150288](/zet/20221003150288/README.md) default webroots wamp
- [20221006213130](/zet/20221006213130/README.md) hacking / CTF platforms
- [20221008221548](/zet/20221008221548/README.md) website
- [20221003151153](/zet/20221003151153/README.md) windows
- [20221003151058](/zet/20221003151058/README.md) windows directory traversal path traversal LFI strings
- [20221008221940](/zet/20221008221940/README.md) URL
- ~/kb/hacking/misc/web-server-default-webroots.md
- [20221008213254](/zet/20221008213254/README.md) file path

Tags:

    #hacking #web #filepath
