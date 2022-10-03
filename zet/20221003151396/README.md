# bash scripting run exiftool on all of the images within a directory
~/kb/bash-scripting/exif-all-images.sh
```bash
#!/bin/bash
# run exiftool on all of the images within a directory
{ find . -type f -name '*.png'
find . -type f -name '*.jpg'
find . -type f -name '*.jpeg'
find . -type f -name '*.gif'
} | xargs exiftool
```

~/kb/bash-scripting/exif-all-images.sh
# References
- [20221003151424](/zet/20221003151424/) bash scripting
- ~/kb/auto-bash.md

Tags:
    #assorted

