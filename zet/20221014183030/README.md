# create cards for kb files

- concept of `create cards for kb files`
- how to add a reference
```
./zc addref -t $id $newid
```
- kb files stored in `zet/20221014150222/list_of_kb_files`
- making a new card with a title and a reference id
```bash
newid=$(./zc new -t "$title" -r "$id" | awk '/created zet ID/ { print $NF }')
```

- saved node IDs in file `zet/20221014183030/kbnodes`
- script
```bash

for f in $(cat zet/20221014150222/list_of_kb_files)
do
  kbid=20221003151443
  title="kb file named $f"
  ./zc new -t "$title" -r "$kbid" | awk '/created zet ID/ { print $NF }'
  sleep 1.5 # stupid way to prevent unique IDs
done

touch zet/20221014183030/createscript
cp output zet/20221014183030/
# going to save gz file

[diag] new kb file named kb/docker/install-docker-compose.md
[diag] addref 20221014185440 20221003151443
20221014185440
[diag] new kb file named kb/docker/installations/install-mandown.md
[diag] addref 20221014185441 20221003151443
20221014185441
[diag] new kb file named kb/docker/run-container-in-background.md
[diag] addref 20221014185443 20221003151443
20221014185443

# get IDs and paths from stream of diagnostic logs
awk '
/new kb file named/ { fn = $NF }
NR > 1 && /^[0-9]+$/ {
  id = $1
  print id, fn
}' zet/20221014183030/output

20221014185440 kb/docker/install-docker-compose.md
20221014185441 kb/docker/installations/install-mandown.md
20221014185443 kb/docker/run-container-in-background.md
20221014185444 kb/docker/docker-compose-shortcuts.md
20221014185446 kb/docker/docker-hd-space.md
20221014185447 kb/docker/lookup-missing-command-packages.md
20221014185449 kb/shell-script-list.md
20221014185450 kb/auto-bash.md
20221014185452 kb/c-language/templates.md
20221014185453 kb/zettelkasten-methodology.md
20221014185455 kb/example-zettel.md
20221014185456 kb/networking/osi-model.md
20221014185458 kb/networking/socat-proxy.md
20221014185459 kb/networking/port-forwarding.md
20221014185501 kb/vim/run-as-script.md
20221014185502 kb/vim/spacevim-set-bindings.md
20221014185504 kb/vim/edit-multiple-files.md
20221014185505 kb/vim/vim.md
20221014185507 kb/python/coding-reference.md
20221014185509 kb/auto-awk.md
20221014185510 kb/ascii/coyote0x90.md
20221014185512 kb/ascii/ascii-box-art.md
20221014185513 kb/ascii/coyote0x90-narrow.md
20221014185515 kb/scratch.md
20221014185516 kb/kafka/connect-confluent.md
20221014185518 kb/kafka/initialize-topics.md
20221014185519 kb/kafka/quick-and-dirty-kafkacat.md
20221014185521 kb/kafka/kafkacat-get-data-by-time.md
20221014185522 kb/kafka/kafkacat.md
20221014185524 kb/kafka/ksql-initialize-example.md
20221014185525 kb/hacking/tricks/windows-smartscreen-bypass.md
20221014185527 kb/hacking/tricks/build-windows-exploits.md
20221014185528 kb/hacking/tricks/stabilize-shell.md
20221014185530 kb/hacking/tricks/scan-firewall-reverse-ports.md
20221014185531 kb/hacking/tricks/run-programs-in-memory.md
20221014185533 kb/hacking/tricks/install-pip-modules-on-target-as-files.md
20221014185534 kb/hacking/tricks/jenkins-rev-shell-code.md
20221014185536 kb/hacking/tricks/malicious-packages.md
20221014185537 kb/hacking/tricks/ping-subnet-os-enumeration.md
20221014185539 kb/hacking/tricks/exploit-asterisk-with-touch.md
20221014185540 kb/hacking/tricks/make-wordlists-fuzzing-with-bash.md
20221014185542 kb/hacking/tricks/ctf-get-tld-working-firefox-url-bar.md
20221014185544 kb/hacking/tricks/wfuzz-identify-versions.md
20221014185545 kb/hacking/tricks/mysql-tricks.md
20221014185547 kb/hacking/tricks/vbscript-wget-hack.md
20221014185548 kb/hacking/tricks/windows-encoding-base64-utf16.md
20221014185550 kb/hacking/tricks/php-lfi2rce-filter-iconv-exploit.md
20221014185551 kb/hacking/tricks/identify-linux-version-service-versions.md
20221014185553 kb/hacking/tricks/dump-hashes-from-registry-backups.md
20221014185554 kb/hacking/tricks/hibernate-hql-injection.md
20221014185556 kb/hacking/tricks/smtp-send-email-cli.md
20221014185557 kb/hacking/tricks/valid-https-server.md
20221014185559 kb/hacking/to-try-lists/got-leaked-file-to-try-list.md
20221014185600 kb/hacking/to-try-lists/privesc/linux.md
20221014185602 kb/hacking/to-try-lists/privesc/windows.md
20221014185603 kb/hacking/to-try-lists/got-access-to-databases-general-SQL.md
20221014185605 kb/hacking/to-try-lists/LDAP.md
20221014185606 kb/hacking/to-try-lists/wsmans-tcp-1270,5985,5986.md
20221014185608 kb/hacking/to-try-lists/RDP.md
20221014185609 kb/hacking/to-try-lists/got-read-or-write-access-to-filesystem.md
20221014185611 kb/hacking/to-try-lists/finger-tcp-79.md
20221014185612 kb/hacking/to-try-lists/SMB.md
20221014185614 kb/hacking/to-try-lists/IPMI.md
20221014185616 kb/hacking/to-try-lists/DNS.md
20221014185617 kb/hacking/to-try-lists/procedure.md
20221014185619 kb/hacking/to-try-lists/HTTP.md
20221014185620 kb/hacking/to-try-lists/FTP.md
20221014185622 kb/hacking/to-try-lists/got-source-code.md
20221014185623 kb/hacking/to-try-lists/stuck.md
20221014185625 kb/hacking/to-try-lists/email.md
20221014185626 kb/hacking/to-try-lists/EVERYTHING.md
20221014185628 kb/hacking/to-try-lists/SSH.md
20221014185629 kb/hacking/to-try-lists/active-directory-domain.md
20221014185631 kb/hacking/to-try-lists/NFS.md
20221014185632 kb/hacking/to-try-lists/HTTP-proxy-squid-proxy.md
20221014185634 kb/hacking/to-try-lists/got-hashes.md
20221014185635 kb/hacking/to-try-lists/docker-repository.md
20221014185637 kb/hacking/to-try-lists/TFTP-udp-69.md
20221014185638 kb/hacking/to-try-lists/SNMP.md
20221014185640 kb/hacking/to-try-lists/nmap-UDP-scan-individual-port-scans.md
20221014185641 kb/hacking/pivoting.md
20221014185643 kb/hacking/passwords/password_cracking_rules/README.md
20221014185644 kb/hacking/passwords/hashcat-generate-wordlist-from-file-stdout.md
20221014185646 kb/hacking/passwords/hashcat-generate-passwords-output-with-mask-pattern.md
20221014185647 kb/hacking/defense/linux-hardening.md
20221014185649 kb/hacking/windows/windows-cheatsheet-resources.md
20221014185651 kb/hacking/windows/xp-server-2003.md
20221014185652 kb/hacking/windows/AD-resource-based-constrained-delegation-attack.md
20221014185654 kb/hacking/windows/windows-active-directory-and-privilege-information.md
20221014185655 kb/hacking/windows/dos-and-powershell-enumeration-quick.md
20221014185657 kb/hacking/windows/dll-to-run-commands.md
20221014185658 kb/hacking/windows/windows-reverse-shell.md
20221014185700 kb/hacking/windows/active-directory-certificate-services.md
20221014185701 kb/hacking/windows/enable-privilege-api.md
20221014185703 kb/hacking/windows/powerview-commands.md
20221014185704 kb/hacking/windows/mimikatz.md
20221014185706 kb/hacking/windows/windows-sensitive-file-disclosure-cheatsheet.md
20221014185707 kb/hacking/windows/persistence.md
20221014185709 kb/hacking/windows/powerup-commands.md
20221014185710 kb/hacking/windows/service-account-privileges.md
20221014185712 kb/hacking/windows/enumeration-scripts-processing.md
20221014185713 kb/hacking/windows/dump-process-memory.md
20221014185715 kb/hacking/windows/test-for-defender-amsi.md
20221014185716 kb/hacking/windows/uacbypass/uac-bypass.md
20221014185718 kb/hacking/windows/windows-information.md
20221014185719 kb/hacking/windows/windows-exploits-non-metasploit.md
20221014185721 kb/hacking/windows/decrypt-azure-ad-connect.md
20221014185722 kb/hacking/windows/common-ad-misconfigurations-footholds.md
20221014185724 kb/hacking/methodology/jwt.md
20221014185726 kb/hacking/methodology/source-analysis.md
20221014185727 kb/hacking/methodology/SSTI-test-payloads.md
20221014185729 kb/hacking/methodology/ds-store-file.md
20221014185730 kb/hacking/methodology/nmap-scripts.md
20221014185732 kb/hacking/methodology/LFI-procedure.md
20221014185733 kb/hacking/methodology/API-enumeration.md
20221014185735 kb/hacking/methodology/sqli-manual-mysql-payloads.md
20221014185736 kb/hacking/methodology/oracle.md
20221014185738 kb/hacking/methodology/IDOR-notes.md
20221014185739 kb/hacking/methodology/XXE.md
20221014185741 kb/hacking/methodology/dns-enum.md
20221014185742 kb/hacking/methodology/hashcat-crack-salted-password.md
20221014185744 kb/hacking/methodology/owasp-top-10-api-bugs.md
20221014185745 kb/hacking/methodology/mobile-apps-and-api-testing.md
20221014185747 kb/hacking/methodology/XSS.md
20221014185748 kb/hacking/methodology/bloodhound-checklist.md
20221014185750 kb/hacking/methodology/osint-overview.md
20221014185751 kb/hacking/python/fix-ssl.md
20221014185753 kb/hacking/python/python-quick-reference.md
20221014185754 kb/hacking/python/python-imports.md
20221014185756 kb/hacking/priv-esc/searchsploit-privesc-queries.md
20221014185758 kb/hacking/priv-esc/fail2ban.md
20221014185759 kb/hacking/priv-esc/windows-run-dll.md
20221014185801 kb/hacking/priv-esc/lxd/lxd-priv-esc.md
20221014185802 kb/hacking/priv-esc/c-shells-and-setuid.md
20221014185804 kb/hacking/priv-esc/etc-passwd-writable-line.md
20221014185805 kb/hacking/priv-esc/bsd-enumeration.md
20221014185807 kb/hacking/priv-esc/windows-dll-hijack.md
20221014185808 kb/hacking/priv-esc/enumeration-quick-commands.md
20221014185810 kb/hacking/priv-esc/netstat-command.md
20221014185811 kb/hacking/priv-esc/polkit-pkexec-CVE-2021-4034/run-in-docker.md
20221014185813 kb/hacking/priv-esc/relative-path-abuse.md
20221014185814 kb/hacking/priv-esc/setuid-binary-no-write-note.md
20221014185816 kb/hacking/priv-esc/symlink.md
20221014185817 kb/hacking/priv-esc/polkit-notes.md
20221014185819 kb/hacking/priv-esc/dirty-cow-no-gcc.md
20221014185820 kb/hacking/priv-esc/sudoers.md
20221014185822 kb/hacking/commands/nikto-command.md
20221014185823 kb/hacking/commands/quick-servers.md
20221014185825 kb/hacking/commands/john-the-ripper-crack-with-wordlist.md
20221014185826 kb/hacking/commands/two-factor.md
20221014185828 kb/hacking/commands/wget-recursive-command.md
20221014185829 kb/hacking/commands/ssh-commands.md
20221014185831 kb/hacking/commands/dns-commands.md
20221014185833 kb/hacking/commands/hydra-http-auth.md
20221014185834 kb/hacking/commands/gobuster.md
20221014185836 kb/hacking/commands/nmap-vuln-scan.md
20221014185837 kb/hacking/commands/smb-mount-share.md
20221014185839 kb/hacking/commands/sucrack-command.md
20221014185840 kb/hacking/commands/responder.md
20221014185842 kb/hacking/commands/davtest-commands.md
20221014185843 kb/hacking/commands/database-enum-commands.md
20221014185845 kb/hacking/commands/hydra-ssh-command.md
20221014185846 kb/hacking/commands/hydra-ftp-command.md
20221014185848 kb/hacking/commands/metasploit.md
20221014185849 kb/hacking/commands/wfuzz-fuzzing.md
20221014185851 kb/hacking/commands/hydra-default-credentials.md
20221014185852 kb/hacking/commands/openssl-commands.md
20221014185854 kb/hacking/commands/git.md
20221014185855 kb/hacking/commands/generate-cewl-wordlist.md
20221014185857 kb/hacking/commands/openssl-general.md
20221014185858 kb/hacking/commands/enum4linux-command.md
20221014185900 kb/hacking/commands/crowbar.md
20221014185901 kb/hacking/commands/msfvenom-commands.md
20221014185903 kb/hacking/commands/keytool.md
20221014185905 kb/hacking/commands/windows-active-directory-kerberos-commands.md
20221014185906 kb/hacking/commands/cracking-encrypted-files-with-john-the-ripper.md
20221014185908 kb/hacking/commands/hydra.md
20221014185909 kb/hacking/commands/feroxbuster-command.md
20221014185911 kb/hacking/commands/encode-powershell-base64-windows.md
20221014185912 kb/hacking/commands/ssh-escape-rbash-set-terminal.md
20221014185914 kb/hacking/commands/openssl-view-information-about-cert.md
20221014185915 kb/hacking/commands/curl.md
20221014185917 kb/hacking/commands/packet-capture.md
20221014185918 kb/hacking/commands/sqlmap-commands.md
20221014185920 kb/hacking/commands/snmp-enumeration-commands.md
20221014185921 kb/hacking/commands/wpscan-command.md
20221014185923 kb/hacking/commands/encoding-commands.md
20221014185924 kb/hacking/commands/web-enumeration-commands.md
20221014185926 kb/hacking/commands/tftp-reference.md
20221014185927 kb/hacking/commands/bloodhound.md
20221014185929 kb/hacking/commands/crackmapexec-commands.md
20221014185930 kb/hacking/commands/hydra-http-post-form.md
20221014185932 kb/hacking/commands/nfs.md
20221014185933 kb/hacking/commands/binary-data-analysis.md
20221014185935 kb/hacking/commands/wfuzz-commands.md
20221014185936 kb/hacking/commands/kubernetes.md
20221014185938 kb/hacking/commands/nmap-command.md
20221014185940 kb/hacking/commands/smbmap.md
20221014185941 kb/hacking/commands/list-dpkg-packages-installed-date.md
20221014185943 kb/hacking/commands/tcpdump-listen-for-pings.md
20221014185944 kb/hacking/commands/ldap.md
20221014185946 kb/hacking/commands/pureftp-commands.md
20221014185947 kb/hacking/commands/smbclient-commands.md
20221014185949 kb/hacking/commands/pivot-tunnel-through-chisel.md
20221014185950 kb/hacking/commands/impacket-commands.md
20221014185952 kb/hacking/commands/enumeration-util.md
20221014185953 kb/hacking/php/PHP-quick-command-reference.md
20221014185955 kb/hacking/php/lfi.md
20221014185956 kb/hacking/php/PHP-credential-harvesting-write-file.md
20221014185958 kb/hacking/php/type-juggling.md
20221014185959 kb/hacking/php/deserialization-attacks.md
20221014190001 kb/hacking/common-commands.md
20221014190002 kb/hacking/pwn/basic-win-pwn.md
20221014190004 kb/hacking/pwn/gef-commands.md
20221014190005 kb/hacking/pwn/gdb-commands.md
20221014190007 kb/hacking/pwn/msfvenom-shellcode-for-pwn.md
20221014190008 kb/hacking/pwn/pwn-methodology.md
20221014190010 kb/hacking/pwn/shellcode-to-executable.md
20221014190012 kb/hacking/pwn/heap-exploit.md
20221014190013 kb/hacking/pwn/calling-conventions.md
20221014190015 kb/hacking/pwn/sigreturn.md
20221014190016 kb/hacking/pwn/binary-analysis.md
20221014190018 kb/hacking/pwn/debug-terminal-setup.md
20221014190019 kb/hacking/pwn/tricks.md
20221014190021 kb/hacking/pwn/python-tricks.md
20221014190022 kb/hacking/pwn/pwntools.md
20221014190024 kb/hacking/exploit/shellshock-exploit.md
20221014190025 kb/hacking/notes-template/privesc.md
20221014190027 kb/hacking/notes-template/creds.md
20221014190028 kb/hacking/notes-template/scratch.md
20221014190030 kb/hacking/notes-template/steps.md
20221014190031 kb/hacking/notes-template/exploit.md
20221014190033 kb/hacking/notes-template/enum.md
20221014190034 kb/hacking/notes-template/notes.md
20221014190036 kb/hacking/web/html.templates.md
20221014190037 kb/hacking/powershell/powershell-enumeration-commands.md
20221014190039 kb/hacking/powershell/powershell-tricks.md
20221014190040 kb/hacking/powershell/load-xml-object-print-password-from-pscredential.md
20221014190042 kb/hacking/misc/tomcat.md
20221014190044 kb/hacking/misc/openssl-commands-encrypt-text.md
20221014190045 kb/hacking/misc/tools-and-apt-packages.md
20221014190047 kb/hacking/misc/important-repositories-tools.md
20221014190048 kb/hacking/misc/troubleshoot-error-messages.md
20221014190050 kb/hacking/misc/bruteforcing-tools.md
20221014190051 kb/hacking/misc/database-cms-enum.md
20221014190053 kb/hacking/misc/database-config-locations.md
20221014190054 kb/hacking/misc/ansible.md
20221014190056 kb/hacking/misc/assorted-information.md
20221014190057 kb/hacking/misc/web-server-default-webroots.md
20221014190059 kb/hacking/misc/file-type-reference.md
20221014190100 kb/hacking/misc/assorted-tools.md
20221014190102 kb/hacking/misc/web-server-executable-extensions.md
20221014190103 kb/hacking/misc/openssl-client-certificates.md
20221014190105 kb/hacking/misc/buzzwords-and-acronyms.md
20221014190106 kb/hacking/analysis/identify-service-data.md
20221014190108 kb/hacking/analysis/source-code-analysis-php.md
20221014190109 kb/hacking/analysis/extract-commands.md
20221014190111 kb/hacking/analysis/apk-analysis.md
20221014190112 kb/hacking/analysis/grep-patterns.md
20221014190114 kb/hacking/lan/bettercap-options.md
20221014190115 kb/hacking/lan/change-mac-address.md
20221014190117 kb/awk-scripting/bash-awk-quick-commands.md
20221014190119 kb/awk-scripting/convert-decimal-to-hex.md
20221014190120 kb/awk-scripting/awk-split.md
20221014190122 kb/awk-scripting/awk-print-unbuffered.md
20221014190123 kb/awk-scripting/enumerate-python-imports.md
20221014190125 kb/awk-scripting/snippets.md
20221014190126 kb/linux/grub-fix-windows-partition.md
20221014190128 kb/linux/xterm-font-size.md
20221014190129 kb/linux/dpkg-info.md
20221014190131 kb/linux/tty-notes.md
20221014190132 kb/linux/iptables.md
20221014190134 kb/linux/deb-dependencies.md
20221014190135 kb/linux/notify-send-crontab-reminder.md
20221014190137 kb/linux/edit-bash-prompt-vi-hotkeys.md
20221014190138 kb/linux/package-manager-commands.md
20221014190140 kb/linux/zsh-see-default-bindings.md
20221014190141 kb/linux/free-up-space.md
20221014190143 kb/linux/users-groups.md
20221014190144 kb/linux/install-alacritty.md
20221014190146 kb/linux/ex-notes.md
20221014190147 kb/linux/less.md
20221014190149 kb/linux/capabilities.md
20221014190151 kb/linux/dump-process-memory.md
20221014190152 kb/linux/job-control.md
20221014190154 kb/linux/git-settings.md
20221014190155 kb/linux/force-upgrade.md
20221014190157 kb/linux/os-pseudo-filesystem-data-commands.md
20221014190158 kb/linux/cyberpunk-retro-machine-serial-terminals.md
20221014190200 kb/linux/proxmox.md
20221014190201 kb/linux/utilities-packages.md
20221014190203 kb/linux/installing-virtualbox.md
20221014190204 kb/linux/tar-commands.md
20221014190206 kb/linux/assorted-notes-and-tips.md
20221014190207 kb/linux/java-jdk-links.md
20221014190209 kb/linux/tldr-info.md
20221014190210 kb/linux/routing.md
20221014190212 kb/linux/numpad-ssh-putty.md
20221014190213 kb/tmux/fix-box-art.md
20221014190215 kb/tmux/get-ctrl-h-to-work.md
20221014190216 kb/tmux/get-data-info.md
20221014190218 kb/tmux/swap-panes.md
20221014190219 kb/tmux/copy-buffer.md
20221014190221 kb/data-engineering-pipelines/jq-command-reference.md
20221014190222 kb/data-engineering-pipelines/postgres.md
20221014190224 kb/data-engineering-pipelines/topological-sort.md
20221014190226 kb/data-engineering-pipelines/yaml-syntax.md
20221014190227 kb/data-engineering-pipelines/data-science-linux-commands.md
20221014190229 kb/auto-python.md
20221014190230 kb/README.md
20221014190232 kb/scripts.md
20221014190233 kb/hardware/surface-tablet.md
20221014190235 kb/hardware/msi-motherboard-error-codes.md
20221014190236 kb/fzf-fuzzy-find/help.md
20221014190238 kb/bash-scripting/file-operations.md
20221014190239 kb/bash-scripting/check-empty-var.md
20221014190241 kb/bash-scripting/stream-operations.md
20221014190242 kb/bash-scripting/capture-web-site-screenshot.md
20221014190244 kb/bash-scripting/text-database-operations.md
20221014190245 kb/bash-scripting/watch-failed-ssh-logins-live.md
20221014190247 kb/bash-scripting/get-current-unix-date-timestamp.md
20221014190248 kb/bash-scripting/xml-parsing.md
20221014190250 kb/bash-scripting/substitution-syntax-braces.md
20221014190251 kb/bash-scripting/expect.md
20221014190253 kb/bash-scripting/find-common-lines-set-operations.md
20221014190254 kb/bash-scripting/get-current-script-dir.md
20221014190256 kb/bash-scripting/strip-color.md
20221014190257 kb/bash-scripting/strip-newlines.md
20221014190259 kb/bash-scripting/tricks.md
20221014190301 kb/bash-scripting/debugging.md

```

` zet/20221014183030/README.md `

# Related

- [20221009095853](/zet/20221009095853/README.md) finished

- [20221014191506](/zet/20221014191506/README.md) associate kb cards with converted cards

- [20221003151443](/zet/20221003151443/README.md) kb
- [20221012171100](/zet/20221012171100/README.md) recently created nodes hub
- 
- [20221014150222](/zet/20221014150222/README.md) list of all kb files and references in imported documents
- [20221012212839](/zet/20221012212839/README.md) check all kb markdown files were migrated succesfully

Tags:

    #todo #notes
