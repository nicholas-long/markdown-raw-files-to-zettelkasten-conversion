# YAML parsing yq

- has TLDR page for command reference
- https://github.com/mikefarah/yq
- go binary with platform release links

```
tldr yq
yq
A lightweight and portable command-line YAML processor.More information: https://mikefarah.gitbook.io/yq/.

 - Output a YAML file, in pretty-print format (v4+):
   yq eval {{path/to/file.yaml}}

 - Output a YAML file, in pretty-print format (v3):
   yq read {{path/to/file.yaml}} --colors

 - Output the first element in a YAML file that contains only an array (v4+):
   yq eval '.[0]' {{path/to/file.yaml}}

 - Output the first element in a YAML file that contains only an array (v3):
   yq read {{path/to/file.yaml}} '[0]'

 - Set (or overwrite) a key to a value in a file (v4+):
   yq eval '.{{key}} = "{{value}}"' --inplace {{path/to/file.yaml}}

 - Set (or overwrite) a key to a value in a file (v3):
   yq write --inplace {{path/to/file.yaml}} '{{key}}' '{{value}}'

 - Merge two files and print to stdout (v4+):
   yq eval-all 'select(filename == "{{path/to/file1.yaml}}") * select(filename == "{{path/to/file2.yaml}}")' {{path/to/file1.yaml}} {{path/to/file2.yaml}}

 - Merge two files and print to stdout (v3):
   yq merge {{path/to/file1.yaml}} {{path/to/file2.yaml}} --colors
```

` zet/20221003151279/README.md `

# Related

- [20221014190226](/zet/20221014190226/README.md) kb file named kb/data-engineering-pipelines/yaml-syntax.md
- [20221003151280](/zet/20221003151280/README.md) YAML parsing
- ~/kb/data-engineering-pipelines/yaml-syntax.md
- [20221025045053](/zet/20221025045053/README.md) yaml data convention for my zet implementation
- https://github.com/mikefarah/yq
- https://github.com/tldr-pages/tldr
- [20221025045945](/zet/20221025045945/README.md) tldr pages
- [20221008214935](/zet/20221008214935/README.md) go language
- [20221028173620](/zet/20221028173620/README.md) yq binaries

Tags:

    #yaml #go #data #pipelines
