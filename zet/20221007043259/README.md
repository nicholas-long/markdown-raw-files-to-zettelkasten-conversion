# zettelkasten generic ideas

- data and scripts in graph nodes
  - conventions?
- store result of commands in flat files
- numbering sequentially based on timestamps can be an arbitrary ordering imposed on zettels
- get some pictures of graphs in here
- SaaS visual link editor for zettelkasten
  - is this the right word?
    - SAAS = paid APIs?
    - PAAS = github?

## move this stuff to cards it is growing kinda big

## tips
- prompts
  - "what about that one time i ..."
- different branches for using with different devices
  - automatic merges should not be a problem
    - use both lines in a merge prompt and keep all IDs - references get cleaned up

- talk about that one time i was analyzing 15000 files and made vim macros and hotkeys to act kind of like a bell labs cardboard learning computer, but for processing text lines
  - kind of a weird idea
  - some macros are useful
  - feel like i learned something about workflow in process

- specific card behavior ideas
  - recently modified list node from github
  - figure out data engineering methodology to integrate with existing graph databases like neo4j with scripts
    - experiment with some dockers and scripts
  - track recently modified cards in git
    - fuzzy search "git modification"
  - check formatting
    - does github care about 2 space formatting?
      - awk script to check for list item formatting = 2 spaces
    - spaces after titles
  - link to a completely random card
    - change every hour?
      - reason to implement cron-type enriching automatically
  - get user starred repos (to index them in here for reference in other places)
    - https://gist.github.com/derhuerst/19e0844796fa3b62e1e9567a1dc0b5a3o
      - old - still works?

### move to implementation

- cron type nodes
- 3-way connection search
  - fuzzy search all nodes outgoing connections pairs
- cloning / copying a card
    - backlinks do not point to same card
    - using as a template

### seen this around

- it seems like generally, links should be directed, but depending on the tool, backlinks will be inserted
  - i strongly believe links should be bidirectional
    - but maybe the link's text can be something meaningful like a type of relationship?
      - like `is-a` in OOP inheritance diagrams - img

- linked a lot of stuff together for brainstorming in fzf
- the order of references should matter
    - need to be kept in a paragraph
    - move to top when useful
        - log when useful or parse logs

` zet/20221007043259/README.md `

# Related

- [20221011192157](/zet/20221011192157/README.md) cool names for the project
- [20221011153359](/zet/20221011153359/README.md) ability to clone cards
- [20221011134623](/zet/20221011134623/README.md) note taking template for heckin boxes
- [20221006084204](/zet/20221006084204/README.md) future enhancements to zet cmd
- [20221010183037](/zet/20221010183037/README.md) i wonder what if let's try
- [20221010155109](/zet/20221010155109/README.md) add link titles to youtube or some other links
- [20221007043646](/zet/20221007043646/README.md) findings about implementing zettelkasten
- [20221009211130](/zet/20221009211130/README.md) zettelkasten can be like a living knowledge base
- [20221009183745](/zet/20221009183745/README.md) TODO: categorize github knowledge bases by attaching graph nodes
- [20221009022138](/zet/20221009022138/README.md) parse text in zettelkasten with python scripts
- [20221008042814](/zet/20221008042814/README.md) WIP
- [20221003151440](/zet/20221003151440/README.md) awk scripting replace words with colorized versions
- [20221003151432](/zet/20221003151432/README.md) awk scripting filter the CVE list for potentially valid, relevant vulnerabilities
- [20221003151406](/zet/20221003151406/README.md) bash scripting download the current CVE list get as Tab Separated Values
- [20221003151023](/zet/20221003151023/README.md) analyzing source code
- [20221003150143](/zet/20221003150143/README.md) proxmox
- [20221003151216](/zet/20221003151216/README.md) caddy stand up https server with a valid certificate
- [20221006025356](/zet/20221006025356/README.md) linux
- [20221003151314](/zet/20221003151314/README.md) bash scripting substitution syntax initialize variable with default value if empty and return it example
- [20221003151400](/zet/20221003151400/README.md) bash scripting update all the git repos in home directory and prompt with lazygit
- [20221003150101](/zet/20221003150101/README.md) python scripting requests http GET params
- [20221003150998](/zet/20221003150998/README.md) GraphQL APIs
- [20221003150881](/zet/20221003150881/README.md) Create symbolic link ( got write access to files, edit perms as root )
- [20221003150072](/zet/20221003150072/README.md) Set spacevim record key back to [Q]
- [20221003150064](/zet/20221003150064/README.md) neovim specific diff
- [20221006215623](/zet/20221006215623/README.md) scrambled machine video notes
- [20221006200018](/zet/20221006200018/README.md) OCR youtube video frames
- [20221003150071](/zet/20221003150071/README.md) vim edit multiple files
- [20221003150066](/zet/20221003150066/README.md) vim diff
- [20221003150067](/zet/20221003150067/README.md) vim
- [20221003150946](/zet/20221003150946/README.md) python
- [20221003151355](/zet/20221003151355/README.md) python scripting read and process lines of input
- [20221003150990](/zet/20221003150990/README.md) GraphQL APIs example GraphQL queries from InsiderPHD video
- [20221003150792](/zet/20221003150792/README.md) generate cewl wordlist from file plaintext with grep
- [20221003150227](/zet/20221003150227/README.md) grep patterns
- [20221006020303](/zet/20221006020303/README.md) zettelkasten note types
- [20221006073459](/zet/20221006073459/README.md) assorted notes from videos rwxrob notes `Tue Oct 4`
- [20221006204315](/zet/20221006204315/README.md) fastest way to take graph notes
- [20221006213953](/zet/20221006213953/README.md) video notes
- [20221003150177](/zet/20221003150177/README.md) notes
- [20221003150249](/zet/20221003150249/README.md) Apache guacamole RDP VNC SSH in web browser default creds
- [20221006054727](/zet/20221006054727/README.md) idea about zettels, commits, and scripts
- [20221006142610](/zet/20221006142610/README.md) recommending zettelkasten note-taking method
- [20221006153641](/zet/20221006153641/README.md) zettelkasten on github
- [20221003150798](/zet/20221003150798/README.md) git
- [20221006033248](/zet/20221006033248/README.md) rwxrob
- [20221006032546](/zet/20221006032546/README.md) my implementation of zet cmd
- [20221003151441](/zet/20221003151441/README.md) awk scripting
- [20221003151338](/zet/20221003151338/README.md) awk scripting
- [20221003151332](/zet/20221003151332/README.md) bash scripting
- [20221003151329](/zet/20221003151329/README.md) bash scripting
- [20221003151424](/zet/20221003151424/README.md) bash scripts
- [20221006013313](/zet/20221006013313/README.md) zettelkasten

Tags:

    #todo #idea #zettelkasten 
