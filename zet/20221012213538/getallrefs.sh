#!/bin/bash

for n in $(ls zet); do
  echo "REFSFOR $n"
  ./zc refs $n
done
