# tmux default s hotkey choose tree to explore panes

- `tmux choose-tree`
- select sessions, panes, windows in preview browser with vi-like hotkeys
- join panes - move windows back into panes
  - open `choose-tree` with prefix S
  - mark target window pane place with m
  - mark the window pane you want to move with t
  - prefix : to open command prompt, type `join-pane`
- man page hotkeys
```
                   Key    Function
                   Enter  Choose selected item
                   Up     Select previous item
                   Down   Select next item
                   +      Expand selected item
                   -      Collapse selected item
                   M-+    Expand all items
                   M--    Collapse all items
                   x      Kill selected item
                   X      Kill tagged items
                   <      Scroll list of previews left
                   >      Scroll list of previews right
                   C-s    Search by name
                   m      Set the marked pane
                   M      Clear the marked pane
                   n      Repeat last search
                   t      Toggle if item is tagged
                   T      Tag no items
                   C-t    Tag all items
                   :      Run a command for each tagged item
                   f      Enter a format to filter items
                   H      Jump to the starting pane
                   O      Change sort field
                   r      Reverse sort order
                   v      Toggle preview
                   q      Exit mode
```

` zet/20221024080719/README.md `

# Related

- [20221010222312](/zet/20221010222312/README.md) tmux workflow
- https://youtu.be/79Y-kqAiMpw
- [20221024082446](/zet/20221024082446/README.md) tmux join window back into pane

Tags:

    #tmux #workflow #pane
