# rwxrob terminal velocity video 10-27

- random idea: could get timestamps?
- concept of `rwxrob terminal velocity 10-27`
- linking to zettelkasten generic ideas because i keep having zet-related ideas watching rob
- 28 - bash script in vim to process some lines, why not awk?
  - editing standalone script in new pane in vim
  - panes vs. tabs
- 5:30 book references in markdown in pandoc?
- 6:13 combining README files for KEG nodes
  - bulleted blocks containing nothing but markdown links
  - looks similar to how i was recursively concatenating markdown headings for fzf search content in dotfiles
    - bullet lists as well - i concur with this idea
  - but what if
  - they are
  - a bunch of titles or bullet points
  - on the same line
    - with some nested content
  - they should form a chain
- 7:51 KEG design principles
  - https://github.com/rwxrob/keg/tree/main/docs/spec/2023-01
- 8:53:30 start talking about keg nodes with slide show
- rob has pretty good opinion of gemini, but it still has problems
  - not simple
- 9:00:20 start diagrams about KEG nodes
- "the README web"
- 9:23:28 hyperlinking is a bad idea / broken
  - google page ranking may be partially determined by "being an authority" on something - lack of hyperlinks out?
  - "click here" is a fail
  - original designers of web would not like what it became today
  - removing constraints for developers -> "worst version of adobe flash / html5 you can imagine"
- origin of ideas
  - "guy who created media wiki web"
  - semantic web
- XML was a massive fail
- "mathjax" for math? included in github
- "you need a data.yaml" file for a data node
  - titles from nodes?
- do not want to support yaml tagging, but need to?
- systems involving permanently linked hashes and updating links are overly complicated
  - also git already does that
- 9:44 reserving elements in yaml schema
- `KEG:` should be reserved in yaml
- 10:00 link to searches on other people's content instead of specific links...
  - "link to highly optimized searches of target document sites"
  - hardcode search criteria in link
  - seems counterintuitive, but you almost always don't want to go to a specific knowledge node somewhere
    - good example: when you are searching and come across dead old website forum post from 17 years ago - xkcd comic
  - but some things like videos have semi permanent guids? specific videos should have links?
  - information getting changed
    - git: it is possible to link to a specific commit ID on github, so could specify version of knowledge it is from...?
- liked gopher?
- "note set"
- concept of a "book node"
- talking about nodes in root dir of repo instead of zet dir?
- 10:26 "rss is shit"
- "manage your knowledge like source"
  - git version control
  - not reinventing the wheel
- 10:59 keg needs a manifest with last updated times
  - store filename and last changed date
  - probably not for ones currently stored on git though, just pull it
  - what about hashes of entire directories?
- 11:01 - "book node", map node, or collection node
  - like a hub with symlinks?
  - "slice" that has reference to other nodes

- added next day: https://github.com/rwxrob/keg-spec

```
```

- next video https://www.twitch.tv/videos/1636670875

` zet/20221027194304/README.md `

# Related

- https://github.com/rwxrob/book-terminal-velocity
- https://www.twitch.tv/videos/1635743707
- https://github.com/rwxrob/keg/tree/main/docs/spec/2023-01
- [20221007043259](/zet/20221007043259/README.md) zettelkasten generic ideas
- [20221006213953](/zet/20221006213953/README.md) video notes
- [20221006033248](/zet/20221006033248/README.md) rwxrob
- [20221008042814](/zet/20221008042814/README.md) WIP
- [20221028161058](/zet/20221028161058/README.md) enforce assets live in nodes
- [20221028194014](/zet/20221028194014/README.md) check header line lengths in script
- [20221028195517](/zet/20221028195517/README.md) rwxrob KEG requirements
- https://github.com/rwxrob/keg-spec
- [20221030085217](/zet/20221030085217/README.md) rwxrob KEG book composition video 10-28

Tags:

    #video #videonotes #terminal
