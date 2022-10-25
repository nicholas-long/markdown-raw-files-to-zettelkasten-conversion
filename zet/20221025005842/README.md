# fix some empty zettels using graph queries

- concept of `fix some empty zettels using graph queries`
- can use script to get content zet/20221007182026/content.awk
  - input markdown files as args

```
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

```

` zet/20221025005842/README.md `

# Related

- [20221013221136](/zet/20221013221136/README.md) graph query language for zettelkasten
- [20221005200242](/zet/20221005200242/README.md) empty zettels to fix
- [20221006013612](/zet/20221006013612/README.md) markdown to zettelkasten conversion project
- [20221012171100](/zet/20221012171100/README.md) recently created nodes hub

Tags:

    #idea
