# apk analysis

- decompile to bytecode and inspect objects
  https://github.com/Konloch/bytecode-viewer

- emulate a phone with genymotion and virtualbox
  - find android version and phone that can run apk
  - [20221003150228](/zet/20221003150228/README.md) apk analysis emulate a phone with genymotion and virtualbox configuring burpsuite on genymotion phone

- extract command for file type apk
  ```bash
  apktool d file.apk
  ```
  - rebuild apk
    - apk files directory is `./app`
    ```bash
    apktool b app -o output.apk
    ```

` zet/20221003150231/README.md `

# Related

- [20221003150233](/zet/20221003150233/README.md) extract command for file type apk
- [20221003150230](/zet/20221003150230/README.md) apk analysis decompile to bytecode and inspect objects
- [20221003150229](/zet/20221003150229/README.md) apk analysis emulate a phone with genymotion and virtualbox
- [20221014190111](/zet/20221014190111/README.md) kb file named kb/hacking/analysis/apk-analysis.md
- ~/kb/hacking/analysis/apk-analysis.md
- [20221003151211](/zet/20221003151211/README.md) got leaked files jar
- [20221003151213](/zet/20221003151213/README.md) got leaked files to try list
- [20221003150239](/zet/20221003150239/README.md) extract command for file type
- [20221003150232](/zet/20221003150232/README.md) extract command for file type apk rebuild apk

Tags:

    #hacking #apk #analysis
