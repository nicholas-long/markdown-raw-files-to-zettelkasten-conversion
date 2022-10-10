# sharing programming projects with zettelkasten

starting new node for idea of sharing hiveminds or knowledge bases between programmers

- quick overview
    - "card" = a directory in zet
        - has permanent IDs and links to other permanent IDs
            - so permanent that the same ID number could be the same concept across databases?
                - can connect concepts together with links to start investigating between different github repos with knowledge bases
        - everything is a file (directory)
    - my implementation: - link
        - Related header - everything below it should be considered touched or altered by scripts
        - could use embedded yml file if necessary? - link
            - prevent formatting issues later
            - but there plenty of reasons why links between markdown pages should be valid links between nodes in a graph database
        - based on rwxrob zet repo at - link
            - research rwxrob tips
- documentation, references, and code are connected through cards
    - if a zettel / card has scripts that interact with one another, link documentation together
    - make a link one way by
        - removing it from related
        - putting human readable link in content
        - `viunlink`
- create issues for things to fix and link to a new zettel for research and notes about it
- links
    - it's easy to copy information between two cards that are connected together
    - links are used for traversing between cards when working as well as tagging and marking things for later investigation or processing by a script
    - links at the top of the related list get used more, so they should be sorted by priority
    - i'm not sure if it's a good idea to add links at the top or bottom of the list - i have a card about this?
        - how it relates to collaboration:
        - stuff at the top will be annoying, get in the way, and get processed right away, so it's probably polite to move it to the bottom
        - on the other hand, a card being linked is an "event happening" and other cards and people visiting them will be aware of it soon
            - someone can edit it and move it wihtin literally seconds on the web interface
- scripts running on a card can bring in a feed of data from some website
- put ideas in text on an existing card, or think of a new card and place to put them. connect it to any relevant resources or code snippets
- you can write ideas down quickly and succinctly, like twitter posts are, and then elaborate and fix the grammar later to sound more professional

- using tools together in strange / convenient ways - examples - make a card
    - git = good CMS with version control, similar to how a jekyll blog works
        - commits = automatically writing a changelog?
    - zettelkasten
        - graph consisting of real hyperlinks + github markdown rendering + web browser = interactive graph explorer
    - unix philosophy + library (book libary)
        - text = data
        - card catalog = graph (comp sci)
    - fzf + printing out card titles and their link titles = fuzzy search how ideas can be related to one another or for specific links between them
    - grep, awk + fzf = a search engine with like a prefilter for only relevant files?
    - github actions = commands to run on in (this) zettelkast "program"
    - an old tablet + a card = touchscreen ui
    - vscode web with vim extension and vim behave slightly differently
        - vim has plugin for highlighting, while vscode highlights the current word in other places in document

- ideas need to be explained and connected to relevant things - make a card - show this to Hayden later when he's not busy
    - writing down and connecting ideas quickly means they can be cataloged for later processing somewhere else
    - from our perspective, we won't forget things
        - i swear writing down notes reduces anxiety, and my partner does too, except hers are only on paper.
    - from the perspective of memes and information, the information has been safely copied and cataloged
        - if information has "evolved" to a point that it "wants to survive" and is "scared" of being forgotten, then it follows that it is trying to get saved somewhere
        - will be connected to various other topics where it can be noticed
    - https://en.wikipedia.org/wiki/Meme
        ```
        Memes, analogously to genes, vary in their aptitude to replicate; successful memes remain and spread, whereas unfit ones stall and are forgotten. Thus, memes that prove more effective at replicating and surviving are selected in the meme pool.
        Memes first need retention. The longer a meme stays in its hosts, the higher its chances of propagation are. When a host uses a meme, the meme's life is extended.[31] The reuse of the neural space hosting a certain meme's copy to host different memes is the greatest threat to that meme's copy.[32] A meme that increases the longevity of its hosts will generally survive longer. On the contrary, a meme that shortens the longevity of its hosts will tend to disappear faster. However, as hosts are mortal, retention is not sufficient to perpetuate a meme in the long term; memes also need transmission
        ```

` zet/20221008214406/README.md `

# Related

- [20221007043646](/zet/20221007043646/README.md) findings about implementing zettelkasten
- [20221006153641](/zet/20221006153641/README.md) zettelkasten on github
- [20221007194303](/zet/20221007194303/README.md) github
- [20221006013313](/zet/20221006013313/README.md) zettelkasten
- rwxrob
- 

Tags:

    #programming #zettelkasten
