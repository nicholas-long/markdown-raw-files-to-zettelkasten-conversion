# generate mermaid graph from set of zet cards

- concept of `generate mermaid graph from set of zet cards`
- can use script `zet/20221014025416/tagboundary` to get tag boundaries of cards
  - example: print all connected nodes marked by notes tag
  `highlevel=20221011182140 # high level machine overview from notes template`
  `./graphquery --human <(zet/20221014025416/tagboundary $highlevel notes)`
- how to draw undirected graphs?


```mermaid
graph TD;
  exploit_path --> potential_exploits;
  exploit_path --> steps;
  exploit_path --> proof__flags__and_screenshots;
  steps --> proof__flags__and_screenshots;
  steps --> potential_exploits;
  steps --> services;
  steps --> machine_high_level_overview_notes;
  steps --> working_notes___foothold;
  steps --> creds;
  creds --> privesc_steps;
  privesc_steps --> proof__flags__and_screenshots;
  privesc_steps --> working_notes___privesc;
  privesc_steps --> machine_high_level_overview_notes;
  working_notes___foothold --> proof__flags__and_screenshots;
  working_notes___foothold --> potential_exploits;
  working_notes___foothold --> services;
  working_notes___foothold --> machine_high_level_overview_notes;
  working_notes___privesc --> proof__flags__and_screenshots;
  working_notes___privesc --> machine_high_level_overview_notes;
  machine_high_level_overview_notes --> services;
  machine_high_level_overview_notes --> ports___enum;
  ports___enum --> enumeration___the_process_of_enumerating_a_target;
  ports___enum --> services;
  services --> machine_web_services;
  potential_exploits --> headline_exploits;
```

` zet/20221030041924/README.md `

# Related

- [20221017091309](/zet/20221017091309/README.md) mermaid tags for markdown diagrams
- [20221006032546](/zet/20221006032546/README.md) my implementation of zet cmd
- [20221021081636](/zet/20221021081636/README.md) template example card to run command output in snippet
- [20221014025416](/zet/20221014025416/README.md) clone a subsection of a graph by tag boundaries
- [20221012171100](/zet/20221012171100/README.md) recently created nodes hub
- [20221030050459](/zet/20221030050459/README.md) markdown on github
- [20221014215609](/zet/20221014215609/README.md) finished, but with ongoing related work

Tags:

    #idea #experiment
