# windows XP and windows server 2003 arbitrary file write -> remote code execution
http://poppopret.blogspot.com/2011/09/playing-with-mof-files-on-windows-for.html
a MOF file that is put in the `%SystemRoot%\System32\wbem\mof\` directory is automatically compiled and registered into the WMI repository. ( in windows XP )
[...] MOF files are compiled into the WMI repository using mofcomp.exe.
this technique used by stuxnet. patched in later windows versions.
upload mof file -> callback should be relatively instantaneous

` zet/20221003151150/README.md `

# Related

- [20221014185651](/zet/20221014185651/README.md) kb file named kb/hacking/windows/xp-server-2003.md
- [20221003151152](/zet/20221003151152/README.md) windows XP and windows server 2003
- [20221003151149](/zet/20221003151149/README.md) windows XP and windows server 2003 arbitrary file write -> remote code execution metasploit
- ~/kb/hacking/windows/xp-server-2003.md

Tags:

    #hacking #windows #xp 
