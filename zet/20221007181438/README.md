# directories and bash scripts as commands

- the concept of changing directory to run the command.
- how to use script with it?
  - `SCRIPT_DIR` idea

```bash
#!/bin/bash
export ZET_CMD_IMPLEMENTATION=20221006032546
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
export prog="$0"

[ -d zet ] || cd $SCRIPT_DIR && export prog="$SCRIPT_DIR/zc" # run me as symlink from my directory or in somewhere with zet/

# the SCRIPT_DIR of symlinked zc command will be the root of the zettelkasten folder
```

` zet/20221007181438/README.md `

# Related

- [20221003151333](/zet/20221003151333/README.md) bash command reference make temp directory

- [20221003151335](/zet/20221003151335/README.md) bash command reference

- [20221003151334](/zet/20221003151334/README.md) bash command reference get full path to file from relative path

- [20221003151299](/zet/20221003151299/README.md) bash tricks

- [20221003150662](/zet/20221003150662/README.md) data analysis commands

- [20221003150156](/zet/20221003150156/README.md) linux assorted commands

- [20221006032546](/zet/20221006032546/README.md) my implementation of zet cmd

- [20221003151424](/zet/20221003151424/README.md) bash scripts


Tags:

    #todo
