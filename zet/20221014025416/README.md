# clone a subsection of a graph by tag boundaries

- concept of `clone a subsection of a graph by tag boundaries`
- for example
  - start at a template node
  - grab all neighboring nodes recursively that have `#template` tag
  - clone them, updating all IDs to match
- would be really useful for OSCP AD network to be able to have multiple machine notes that could all be linked together somehow
- could do it with edge induced subgraph notated by a set of edges
  - in the form `11111111111111 22222222222222` the edges between 2 nodes

```
zet/20221014025416/tagboundary

# print all connected nodes marked by notes tag
highlevel=20221011182140 # high level machine overview from notes template
./graphquery --human <(zet/20221014025416/tagboundary $highlevel notes)

query @notes
- [20221006020303](/zet/20221006020303/README.md) zettelkasten note types #zettelkasten #notes #tips 
- [20221006035818](/zet/20221006035818/README.md) rwxrob skilstak beginner boost videos #linux #video #notes 
- [20221006073459](/zet/20221006073459/README.md) assorted notes from videos rwxrob notes `Tue Oct 4` #videos #notes #todo 
- [20221006142610](/zet/20221006142610/README.md) recommending zettelkasten note-taking method #zettelkasten #notes 
- [20221006204315](/zet/20221006204315/README.md) fastest way to take graph notes #zettelkasten #speed #workflow #notes #optimization
- [20221006213953](/zet/20221006213953/README.md) video notes #video #notes 
- [20221006215623](/zet/20221006215623/README.md) scrambled machine video notes #video #hacking #notes 
- [20221006220044](/zet/20221006220044/README.md) adding stream notes #notes 
- [20221008183326](/zet/20221008183326/README.md) findings about video notes #videonotes #notes
- [20221009023024](/zet/20221009023024/README.md) screenshot of taking notes #screenshot #notes
- [20221010180841](/zet/20221010180841/README.md) screen and tmux rwxrob video #notes
- [20221011093146](/zet/20221011093146/README.md) watch rwxrob for workflow and bash tips - notes #todo #notes
- [20221011134623](/zet/20221011134623/README.md) note taking template for heckin boxes #todo #notes
- [20221011175709](/zet/20221011175709/README.md) zettelkasten note taking software programs #notes
- [20221011181347](/zet/20221011181347/README.md) hacking notes template 1 #notes
- [20221011181453](/zet/20221011181453/README.md) exploit path #todo #idea #notes #template
- [20221011181531](/zet/20221011181531/README.md) steps #notes #template
- [20221011181605](/zet/20221011181605/README.md) creds #notes
- [20221011181629](/zet/20221011181629/README.md) usernames #notes
- [20221011181704](/zet/20221011181704/README.md) passwords #notes
- [20221011181820](/zet/20221011181820/README.md) privesc steps #notes
- [20221011181920](/zet/20221011181920/README.md) working notes - foothold #notes
- [20221011182016](/zet/20221011182016/README.md) working notes - privesc #notes
- [20221011182140](/zet/20221011182140/README.md) machine high-level overview notes #notes #template
- [20221011182254](/zet/20221011182254/README.md) ports - enum #notes
- [20221011182350](/zet/20221011182350/README.md) services #notes
- [20221011182459](/zet/20221011182459/README.md) machine web services #notes
- [20221011183500](/zet/20221011183500/README.md) potential exploits #notes
- [20221011193153](/zet/20221011193153/README.md) collection of zettelkasten tips from youtube #notes
- [20221015065151](/zet/20221015065151/README.md) terminal color escape sequences and ncurses python video #notes #linux #terminal
- [20221020193850](/zet/20221020193850/README.md) what is knowledge management #videonotes #notes #zettelkasten

# print all connected nodes marked by notes tag
highlevel=20221011182140 # high level machine overview from notes template
./graphquery --human <(zet/20221014025416/tagboundary $highlevel template)

query @template
- [20221011181453](/zet/20221011181453/README.md) exploit path #todo #idea #notes #template
- [20221011181531](/zet/20221011181531/README.md) steps #notes #template
- [20221011182140](/zet/20221011182140/README.md) machine high-level overview notes #notes #template

```

` zet/20221014025416/README.md `

# Related

- [20221011153359](/zet/20221011153359/README.md) ability to clone cards
- [20221008054439](/zet/20221008054439/README.md) graph database
- [20221006084204](/zet/20221006084204/README.md) future enhancements to zet cmd
- [20221023084432](/zet/20221023084432/README.md) graph theory
- [20221013221136](/zet/20221013221136/README.md) graph query language for zettelkasten
- [20221008042814](/zet/20221008042814/README.md) WIP
- [20221006032546](/zet/20221006032546/README.md) my implementation of zet cmd

Tags:

    #idea
