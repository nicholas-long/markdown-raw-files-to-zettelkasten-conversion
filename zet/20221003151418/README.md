# bash scripting parse args with case statement

~/kb/bash-scripting/template.sh
```bash
#!/bin/bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

# parse args with case statement
VERBOSE=0
PAGING="no"
while [[ $# -gt 0 ]]; do
  case $1 in
    -p|--paging)
      PAGING=1
      ;;
    -o|--optional)
      shift # pop arg
      OPTIONAL="$1"
      ;;
    -v|--verbose)
      VERBOSE=1
      ;;
    -h|--help)
      echo "Usage: $0 [ options ] directory"
      echo "Options:"
      cat "$0" | grep '^\s\+-.|--.*'
      exit 1
      ;;
    *)
      KB_DIR="$1"
      ;;
  esac
  shift
done

if [ $VERBOSE -ne 0 ]; then
  echo "Paging $PAGING"
  [ -n "$OPTIONAL" ] && echo "Optional param $OPTIONAL"
  echo "Positional parameter $KB_DIR"
fi

# exit if parameter is missing
[ -z "$KB_DIR" ] && echo "Missing parameter" && exit 1

exit 0
```

~/kb/bash-scripting/template.sh

` zet/20221003151418/README.md `

# Related

- [20221003151417](/zet/20221003151417/README.md) bash scripting exit if parameter is missing
- [20221014185450](/zet/20221014185450/README.md) kb file named kb/auto-bash.md
- [20221003151424](/zet/20221003151424/README.md) bash scripts
- ~/kb/auto-bash.md

Tags:

    #bash #script #syntax #template #arg
