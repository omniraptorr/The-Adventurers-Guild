#!/bin/sh

rm -r dist
mkdir dist
cd src

for i in *.ttslua; do
    [ -f "$i" ] || break
    if [ "$i" == "Global.-1.ttslua" ]; then
        # Remove the vscode import in Global
        mkdir ../temp
         tail -n +2 "$i" > "../temp/$i"
         more +1 "$i" || luamin -f "../temp/$i" > "../dist/$i"
         rm -r ../temp
    else
         luamin -f "$i" > "../dist/$i"
    fi
done