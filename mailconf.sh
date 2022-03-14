 #!/bin/bash

 size=`df -h . | awk -F " " '{print} $(NF-1)' | tail -1 | sed 's/%//g'`
 if [ $size -gt 20 ]; then
 cat filename | mail -s "disc space" -c "abcgmail.com" -b "ullaspari223@gmail.com"
 fi
