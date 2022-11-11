# fix some empty zettels using graph queries

- concept of `fix some empty zettels using graph queries`
- can use script to get content zet/20221007182026/content.awk
  - input markdown files as args

```

# script to count lines without links

zet/20221025005842/linecounts $(find zet -name README.md) | awk '$1 == 0' | wc -l
141
zet/20221025005842/linecounts $(find zet -name README.md) | awk '$1 == 0 {split($2,arr,"/"); print arr[2]} '
./graphquery --human <(zet/20221025005842/linecounts $(find zet -name README.md) | awk '$1 == 0 {split($2,arr,"/"); print arr[2]} ')

# this will work to look through all the empty stuff

--------------------------------------------------------------------------------
empties=20221005200242
msfvenom=20221003150777
./graphquery --human id $msfvenom refs refs not <( ./graphquery id $empties refs )


- nonempty
- [20221003150756](/zet/20221003150756/README.md) MSFVENOM tricks make executable binary with input shellcode #command #hacking #msfvenom 
- [20221003150758](/zet/20221003150758/README.md) MSFVENOM Active Sever Pages Extended (.aspx) #command #hacking #msfvenom 
- [20221003150759](/zet/20221003150759/README.md) MSFVENOM Java Server Pages (.jsp) As .war #command #hacking #msfvenom 
- [20221003150760](/zet/20221003150760/README.md) MSFVENOM Java Server Pages (.jsp) #command #hacking #msfvenom 
- [20221003150761](/zet/20221003150761/README.md) MSFVENOM Linux Binary (.elf) 32 Bit (x86) Bind Shell #command #hacking #msfvenom 
- [20221003150762](/zet/20221003150762/README.md) MSFVENOM Linux Binary (.elf) 32 Bit (x86) Reverse Shell #command #hacking #msfvenom 
- [20221003150763](/zet/20221003150763/README.md) MSFVENOM Linux Binary (.elf) 32 Bit (x86) Bind Shell #command #hacking #msfvenom 
- [20221003150764](/zet/20221003150764/README.md) MSFVENOM Linux Binary (.elf) 32 Bit (x86) Reverse Shell #command #hacking #msfvenom 
- [20221003150767](/zet/20221003150767/README.md) MSFVENOM Windows Binary (.exe) executable 64 Bit (x64) Meterpreter #command #hacking #msfvenom 
- [20221003150768](/zet/20221003150768/README.md) MSFVENOM Windows Binary (.exe) executable 64 Bit (x64) Bind Shell #command #hacking #msfvenom 
- [20221003150769](/zet/20221003150769/README.md) MSFVENOM Windows Binary (.exe) executable 64 Bit (x64) Reverse Shell #command #hacking #msfvenom 
- [20221003150770](/zet/20221003150770/README.md) MSFVENOM Windows Binary (.exe) executable 64 Bit (x64) service #command #hacking #msfvenom 
- [20221003150772](/zet/20221003150772/README.md) MSFVENOM Windows Binary (.exe) executable 32 Bit (x86) Bind Shell Output in Hex, C Style, Exclude bad chars, Exitfunction thread #command #hacking #msfvenom 
- [20221003150773](/zet/20221003150773/README.md) MSFVENOM Windows Binary (.exe) executable 32 Bit (x86) Bind Shell #command #hacking #msfvenom 
- [20221003150774](/zet/20221003150774/README.md) MSFVENOM Windows Binary (.exe) executable 32 Bit (x86) Reverse Shell #command #hacking #msfvenom 

- link to main heading
cat << EOF | xargs -n 1 ./zc addref -t 20221003150777
20221003150756
20221003150758
20221003150759
20221003150760
20221003150761
20221003150762
20221003150763
20221003150764
20221003150767
20221003150768
20221003150769
20221003150770
20221003150772
20221003150773
20221003150774
EOF

--------------------------------------------------------------------------------

./graphquery --human id 20221005200242 refs
# zet/20221007182026/content.awk
# move useful script to good place
cp zet/20221007182026/content.awk implementation/getcontent

# add some awk features
BEGIN { for (n = 1; n < ARGC; n++) if (ARGV[n] ~ /^[0-9]+$/) ARGV[n] = "zet/" ARGV[n] "/README.md" }
NR == 1 { next }
/^# [Rr]elated/ { nextfile }
$0 !~ /^ *$/ { print }

implementation/getcontent 20221006032546

# get way to count lines too
implementation/countlines 20221025005842 20221006032546

# fix a bug related to line count and multiple files with FNR vs NR

./graphquery id 20221005200242 refs | xargs implementation/countlines | awk '$3 == 1 { print $1 }' > zet/20221025005842/emptycards
wc -l zet/20221025005842/emptycards
254 zet/20221025005842/emptycards

for id in $(cat zet/20221025005842/emptycards); do
  export id
  ./graphquery id $id refs | xargs implementation/countlines | awk '
    $3 > 1 {
      print ENVIRON["id"], $0
    }
    '
done

zet/20221025005842/queryallneighbors

zet/20221025005842/queryallneighbors | tee zet/20221025005842/queryoutput

# used a vim script to remove all references to "empty zettels to fix" `nkdj`

--------------------------------------------------------------------------------

awk '
emptyid != $1 {
  emptyid = $1
  print ""
  print "next id", emptyid
  system("head -n 1 zet/" emptyid "/README.md")
}
{
  print
  system("head -n 1 " $3)
}
' zet/20221025005842/queryoutput

```

` zet/20221025005842/README.md `

# Related

- [20221013221136](/zet/20221013221136/README.md) graph query language for zettelkasten
- [20221005200242](/zet/20221005200242/README.md) empty zettels to fix
- [20221006013612](/zet/20221006013612/README.md) markdown to zettelkasten conversion project
- [20221008042814](/zet/20221008042814/README.md) WIP

Tags:

    #idea
