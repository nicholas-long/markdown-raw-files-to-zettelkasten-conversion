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

- 20221003151333

- 20221003151335

- 20221003151334

- 20221003151299

- 20221003150662

- 20221003150156

- 20221006032546

- 20221003151424


Tags:

    #todo
