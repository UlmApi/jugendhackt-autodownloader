#!/bin/bash

# check if list was previously generated
[ -e list ] && rm list

# git for Windows
wget -q https://git-scm.com/download/win -q -O - | grep -Eo 'https://github.com/git-for-windows.*-bit\.exe' | uniq -u >> list

# Arduino IDEs – won't work this way because of their donation landing page
# wget -q https://www.arduino.cc/en/Main/Software -q -O - | grep -Eo 'www.arduino.cc/download_handler.php\?f=/arduino-[0-9]\.[0-9]\.[0-9].*(zip|exe|xz)' | sed  -e 's/^/https:\/\//' >> list

# Raspbian
echo 'https://downloads.raspberrypi.org/raspbian_latest' >> list

# Finally: Download the complete list. 
# Preserve original file names with --content-disposition (important for raspbian etc)
# Do not download files that were already downloaded (-nc, no-clobber)
wget -nc --content-disposition -i list
