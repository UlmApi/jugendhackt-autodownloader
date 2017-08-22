# jugendhackt-autodownloader

Autodownloadscript for Jugendhackt essentials. Downloads all the huge stuff you'd need for Hackathons like Jugend hackt, e.g. to your local file/SMB server for everybody to locally access.

## What it does

Currently it scrapes the websites/directories of

 * Git for Windows
 * Raspbian

adds the current releases to a list and then sends wget ahead to download them all. Files that were already downloaded are preserved/ignored.

## What it yet needs to do

Scrape and download the following:

 * Arduino IDE (their downloader script prevents direct file access)
 * Python for Windows
 * Maybe the Atom editor?
 * … (your suggestion here)

## Why?

Because 60 kids simultaneously downloading Git and Raspbian have proven to clog even the fastest University downlinks. This makes you mirror the most wanted tools in your LAN

## Contributing

Please feel free to submit pull requests and/or issues!
