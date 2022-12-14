# windows API enable privilege

- https://github.com/CsEnox/SeManageVolumeExploit/blob/main/SeManageVolumeExploit.c
```c
// Enabling Privilege
HANDLE hToken;
TOKEN_PRIVILEGES tkp;
OpenProcessToken(GetCurrentProcess(), TOKEN_ADJUST_PRIVILEGES | TOKEN_QUERY, &hToken);
LookupPrivilegeValue(NULL, SE_MANAGE_VOLUME_NAME, &tkp.Privileges[0].Luid);
tkp.PrivilegeCount = 1;
tkp.Privileges[0].Attributes = SE_PRIVILEGE_ENABLED;
AdjustTokenPrivileges(hToken, FALSE, &tkp, 0, (PTOKEN_PRIVILEGES)NULL, 0);
```

` zet/20221003151093/README.md `

# Related

- <https://github.com/CsEnox/SeManageVolumeExploit/blob/main/SeManageVolumeExploit.c>
- [20221014185701](/zet/20221014185701/README.md) kb file named kb/hacking/windows/enable-privilege-api.md
- [20221009005402](/zet/20221009005402/README.md) preparing for the OSCP exam
- [20221008215655](/zet/20221008215655/README.md) user account
- [20221007220451](/zet/20221007220451/README.md) hacking notes hub
- [20221003151094](/zet/20221003151094/README.md) windows API
- [20221003151092](/zet/20221003151092/README.md) windows API enable privilege API calls
- ~/kb/hacking/windows/enable-privilege-api.md
- [20221003151207](/zet/20221003151207/README.md) windows privilege escalation

Tags:

    #hacking #windows #enable #privesc #tip
