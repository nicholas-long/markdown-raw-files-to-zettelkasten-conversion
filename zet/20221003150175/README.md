# unix editor ex / ed example commands

- print from line 1 until tty height
```
1z
```

- undo (undo stack in ex)
```
u
```

- current line number
```
=
```

- delete lines ranging from 2 to EOF
```
2,$d
```

- substitute with regex like sed
```
3 ls -al¬
`:s/ .*//`
3 ls¬
```

- edit / change line buffer
```
:1z
  1 text
  2 text
  3 ls¬
:3c
id; uname -a
.
:1z
  1 text
  2 text
  3 id; uname -a¬
```

- pipe lines into the program and replace output like in vim.
pipe data send line or range of lines to stdin
```
  3 id; uname -a¬
:3!bash
:3z
  3 uid=1000(`... snip ...`)¬
  4 Linux `... snip ...` GNU/Linux¬
```

- join referenced line or current line with next line.
```
j
join without spaces (ex does spaces, ed does not?)
j!
```

- append text lines ranging from 2 to EOF
```
a
text goes here. appending after current line.¬
text
.
```

` zet/20221003150175/README.md `

# Related

- [20221009014200](/zet/20221009014200/README.md) concept of a command
- [20221006025356](/zet/20221006025356/README.md) linux
- [20221012135747](/zet/20221012135747/README.md) unix text editors
- [20221008214631](/zet/20221008214631/README.md) vim hotkeys and tricks
- [20221003150073](/zet/20221003150073/README.md) Run vim as a script on datafile, write to file `output`
- [20221014190146](/zet/20221014190146/README.md) kb file named kb/linux/ex-notes.md
- [20221003150176](/zet/20221003150176/README.md) ex editor
- ~/kb/linux/ex-notes.md
- [20221006035818](/zet/20221006035818/README.md) rwxrob skilstak beginner boost videos

Tags:

    #linux #ex 
