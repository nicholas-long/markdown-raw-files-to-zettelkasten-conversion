#!/bin/bash
# things to run to update metadata, tags, and references

./enrich-references.sh
./get-all-tags.sh > all_tags
./index-tags.sh
