## parse scrape directory and file information
https://grimhacker.com/2019/05/06/parsing-ds_store-files/
```bash
git clone https://bitbucket.org/grimhacker/ds_store_parser
cd ds_store_parser
python3 -m pip install --user ds_store argparse
python3 ds_store_parser.py -i ../.DS_Store
```
