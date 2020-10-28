#!/bin/sh
export MSYS=winsymlinks:nativestrict
me=$(whoami)
symlinkAddress="C:\Users\\$me\AppData\Local\Temp\TabletopSimulator\Tabletop Simulator Scripts"

cd src
# echo "$symlinkAddress"
tempDir=$(find ~ -name "Tabletop Simulator Scripts")
echo "here it is > $symlinkAddress"
ls
# ln -s /path/to/file /path/to/symlink
for i in *.ttslua; do
    [ -f "$i" ] || break
    echo "$tempDir/$i"
    echo "$(pwd)/$i"
    rm -rf "$tempDir/${i}"
    ln -s  "$(pwd)/${i}" "$tempDir/${i}"
done