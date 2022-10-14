# HTTP specific HTTP server exploit possibilities
- apache (old versions) - searchsploit plugins versions
- cgi-bin + apache exactly 2.4.49 -> directory traversal
- tomcat
  - tomcat + apache httpd proxy route -> path traversal with `/..;/` `www.vulnerable.com/lalala/..;/manager/html` `http://www.vulnerable.com/;param=value/manager/html` (hacktricks)
- nginx + another HTTP -> request smuggling

` zet/20221003151189/README.md `

# Related

- [20221014185619](/zet/20221014185619/README.md) kb file named kb/hacking/to-try-lists/HTTP.md
- [20221013190422](/zet/20221013190422/README.md) headline exploits
- [20221003150426](/zet/20221003150426/README.md) zip slip evilarc.py
- [20221009102436](/zet/20221009102436/README.md) hacking to try lists
- [20221007044552](/zet/20221007044552/README.md) todo or to-try list
- [20221003151193](/zet/20221003151193/README.md) HTTP
- ~/kb/hacking/to-try-lists/HTTP.md

Tags:

    #to-try-list #hacking #http 
