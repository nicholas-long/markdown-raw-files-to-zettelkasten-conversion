#!/bin/bash

find zet -name README.md | awk '
{
  command = "./get-references.awk files=1 " $0
  split($0, path_arr, "/")
  while (command | getline result > 0) {
    print path_arr[2], result
  }
  close(command)
}
'
