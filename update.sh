#!/bin/bash

# check if list was previously generated
[ -e list ] && rm list

# git for Windows
wget -q https://git-scm.com/download/win -q -O - | grep -Eo 'https://github.com/git-for-windows.*-bit\.exe' | uniq -u >> list

# Arduino IDEs – won't work this way because of their donation landing page
# wget -q https://www.arduino.cc/en/Main/Software -q -O - | grep -Eo 'www.arduino.cc/download_handler.php\?f=/arduino-[0-9]\.[0-9]\.[0-9].*(zip|exe|xz)' | sed  -e 's/^/https:\/\//' >> list

# Raspbian
echo 'https://downloads.raspberrypi.org/raspbian_latest' >> list

# Cura, latest version vor win64 and AppImage
wget -q http://software.ultimaker.com/current/ -O - | grep -Eo 'Cura-[0-9]\.[0-9]\.[0-9](-win64\.exe|\.AppImage)' | sort -ur | sed -e 's/^/http:\/\/software.ultimaker.com\/current\//' | head -2 >> list

# JOSM latest and tested
echo 'https://josm.openstreetmap.de/josm-tested.jar' >> list
echo 'https://josm.openstreetmap.de/josm-latest.jar' >> list

# Finally: Download the complete list. 
# Preserve original file names with --content-disposition (important for raspbian etc)
# Do not download files that were already downloaded (-nc, no-clobber)
wget -nc --content-disposition -i list
