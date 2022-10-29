# awk bash dealing with file paths

useful

```bash
find zet -executable -name autoexec_enrich | awk '
BEGIN { FS = OFS = "/" }
{
  file = $0
  "realpath " file | getline
  NF--
  scriptpath = $0
  "pwd" | getline
  system(file " " $0 " " scriptpath)
}
'
```

` zet/20221008070202/README.md `

# Related

- [20221003151302](/zet/20221003151302/README.md) get current script directory
- [20221008213254](/zet/20221008213254/README.md) file path
- [20221008061845](/zet/20221008061845/README.md) workflow
- [20221003150105](/zet/20221003150105/README.md) python coding and scripting quick reference
- [20221003151363](/zet/20221003151363/README.md) python scripting
- [20221003151309](/zet/20221003151309/README.md) expect scripts
- [20221003151424](/zet/20221003151424/README.md) bash scripts
- [20221006010531](/zet/20221006010531/README.md) sed scripts
- [20221003150551](/zet/20221003150551/README.md) php cmd shell
- [20221006025356](/zet/20221006025356/README.md) linux
- [20221003151341](/zet/20221003151341/README.md) awk split string
- [20221003151441](/zet/20221003151441/README.md) awk scripting
- [20221003151338](/zet/20221003151338/README.md) awk scripting

Tags:

    #tricks #coding #awk #bash #useful #trick
