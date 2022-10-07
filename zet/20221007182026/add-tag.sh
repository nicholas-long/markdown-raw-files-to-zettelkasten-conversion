#!/bin/bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

# parse args with case statement
VERBOSE=0
PAGING="no"
while [[ $# -gt 0 ]]; do
  case $1 in
    -t|--tag)
      shift # pop arg
      tag="$1"
      tag="${tag//#/}"
      ;;
    -h|--help)
      echo "Usage: $0 [ options ] directory"
      echo "Options:"
      cat "$0" | grep '^\s\+-.|--.*'
      exit 1
      ;;
    *)
      arg="$1"
      echo "Add tag $tag to $arg"
      cat zet/$arg/README.md
      filename="zet/$arg/README.md"
      nvim -c ":execute \"normal! GA#$tag \<esc>\"" -c ':wq' $filename
      ;;
  esac
  shift
done
