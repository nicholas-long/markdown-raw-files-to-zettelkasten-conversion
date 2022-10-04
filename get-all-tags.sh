#!/bin/bash

tail -n 1 zet/*/README.md | awk '/^    #/' | sed -e 's/^    //g' -e 's/ /\n/g' | sort -u
