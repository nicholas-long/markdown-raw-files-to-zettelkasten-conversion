# HTTP specific HTTP server exploit possibilities
- apache (old versions) - searchsploit plugins versions
- cgi-bin + apache exactly 2.4.49 -> directory traversal
- tomcat
  - tomcat + apache httpd proxy route -> path traversal with `/..;/` `www.vulnerable.com/lalala/..;/manager/html` `http://www.vulnerable.com/;param=value/manager/html` (hacktricks)
- nginx + another HTTP -> request smuggling

# Related
- [20221003151193](/zet/20221003151193/README.md) HTTP
- ~/kb/hacking/to-try-lists/HTTP.md

Tags:
    #assorted #to-try-list #hacking #HTTP
