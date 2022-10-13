# useful vim hotkeys for zettelkasten

the concept of `useful vim hotkeys for zettelkasten`

- i like this: visual mode + arrow keys = throw lines [ up/down, begin/end paragraph ]
  - you weren't going to use them for anything else anyway

- macro to convert line to reference where item 1 is a file path to a zettel
```
df/;DI- jk
```

- open links as files macro
```
reg
c  "o   /- [^Mww"zye:e zet/^Rz/README.tx<80>kb<80>kbmd^M
```
  - what happened there at the end?

- reload card
```
:e %
```

- vim code block lines
  - highlight with `V%`
  - move with my cool visual mode bind for moving lines
    - visual mode is good for something

- highlight with `V%`
- move with my cool visual mode bind for moving lines
  - visual mode is good for something

- open markdown links' document in tabs - good for workflow?

` zet/20221009162948/README.md `

# Related

- [20221003150076](/zet/20221003150076/README.md) swap panes
- [20221011075934](/zet/20221011075934/README.md) configure and run lynx with vi mode hotkeys
- [20221008024933](/zet/20221008024933/README.md) vim code block lines
- [20221010074318](/zet/20221010074318/README.md) engineer the workflow, not the product
- [20221008214406](/zet/20221008214406/README.md) sharing programming projects with zettelkasten
- [20221003150177](/zet/20221003150177/README.md) notes
- [20221008214827](/zet/20221008214827/README.md) the concept of utility or being useful
- [20221006013313](/zet/20221006013313/README.md) zettelkasten
- [20221006032546](/zet/20221006032546/README.md) my implementation of zet cmd
- [20221008214631](/zet/20221008214631/README.md) vim hotkeys and tricks

Tags:

    #vim #macro
