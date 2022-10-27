# sharing programming projects with zettelkasten

starting new node for idea of sharing hiveminds or knowledge bases between programmers.
show this to Hayden later when he's not busy.

## outline of the process

- "card" = a directory in zet
  - has permanent IDs and links to other permanent IDs
    - so permanent that the same ID number could be the same concept across databases?
      - can connect concepts together with links to start investigating between different github repos with knowledge bases
  - everything is a file (directory)

- my implementation: - link
  - based on rwxrob zet repo at - link
    - research rwxrob tips
  - Related header - everything below it should be considered touched or altered by scripts
  - could use embedded yml file if necessary? - link
    - prevent formatting issues later
    - but there plenty of reasons why links between markdown pages should be valid links between nodes in a graph database

## linking things together

- links
  - links are used for traversing between cards when working as well as tagging and marking things for later investigation or processing by a script
  - it's easy to copy information between two cards that are connected together
  - links at the top of the related list get used more, so they should be sorted by priority
  - tieing things together in certain ways may make sense to me, but does it make sense to other developers?
    - develop conventions for things, perhaps in a card somewhere for reference
    - base organization ideas and workflows on real algorithms from university classes
      - like how it's cool to sort a deck of cards using quicksort if you can remember how to quicksort recursively
  - i'm not sure if it's a good idea to add links at the top or bottom of the list - i have a card about this?
    - how it relates to collaboration:
    - stuff at the top will be annoying, get in the way, and get processed right away, so it's probably polite to move it to the bottom
    - on the other hand, a card being linked is an "event happening" and other cards and people visiting them will be aware of it soon
      - someone can edit it and move it wihtin literally seconds on the web interface

- ideas about implementation
  - scripts running on a card can bring in a feed of data from some website
  - put ideas in text on an existing card, or think of a new card and place to put them. connect it to any relevant resources or code snippets
  - you can write ideas down quickly and succinctly, like twitter posts are, and then elaborate and fix the grammar later to sound more professional
  - documentation, references, and code are connected through cards
    - if a zettel / card has scripts that interact with one another, link documentation together
    - make a link one way by
      - removing it from related
      - putting human readable link in content
      - `viunlink`
  - create issues for things to fix and link to a new zettel for research and notes about it

` zet/20221008214406/README.md `

# Related

- [20221014081712](/zet/20221014081712/README.md) ways to get hacked
- [20221014074318](/zet/20221014074318/README.md) important choices of tech stack
- [20221014073148](/zet/20221014073148/README.md) reasoning behind choices for tech stack - finding dependable and long lasting technology
- [20221014072547](/zet/20221014072547/README.md) ideas need to be explained and connected to relevant things
- [20221014071406](/zet/20221014071406/README.md) using tools together in strange / convenient ways - examples
- [20221012145054](/zet/20221012145054/README.md) things you can organize in personal life in private zettel notes
- [20221006032546](/zet/20221006032546/README.md) my implementation of zet cmd
- [20221006140520](/zet/20221006140520/README.md) zet cmd spawn feature
- [20221006142610](/zet/20221006142610/README.md) recommending zettelkasten note-taking method
- [20221006051705](/zet/20221006051705/README.md) moving to real zk implementation
- [20221009211130](/zet/20221009211130/README.md) zettelkasten can be like a living knowledge base
- [20221007043646](/zet/20221007043646/README.md) findings about implementing zettelkasten
- [20221007055535](/zet/20221007055535/README.md) full list of zetcmd actions
- [20221006153641](/zet/20221006153641/README.md) zettelkasten on github
- [20221009171616](/zet/20221009171616/README.md) converting markdown formats with `[[links]]`
- [20221009162948](/zet/20221009162948/README.md) useful vim hotkeys for zettelkasten
- [20221007051119](/zet/20221007051119/README.md) zet cmd enrich process
- [20221006032933](/zet/20221006032933/README.md) problems / issues with zet cmd
- [20221006084204](/zet/20221006084204/README.md) future enhancements to zet cmd
- [20221006033248](/zet/20221006033248/README.md) rwxrob
- [20221007200304](/zet/20221007200304/README.md) how to use zc cmd
- [20221009023024](/zet/20221009023024/README.md) screenshot of taking notes
- [20221009015032](/zet/20221009015032/README.md) let's make a dockerfile for zet cmd
- [20221008061334](/zet/20221008061334/README.md) concepts
- [20221008042814](/zet/20221008042814/README.md) WIP
- [20221009091132](/zet/20221009091132/README.md) new links should come in at the bottom
- [20221007194303](/zet/20221007194303/README.md) github
- [20221006013313](/zet/20221006013313/README.md) zettelkasten
- [20221010183037](/zet/20221010183037/README.md) importing zettelkasten data

Tags:

    #programming #zettelkasten
