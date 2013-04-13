#!/bin/sh
unzip $1 -d OUT
./apktool d $1 $2
cp -r OUT/META-INF $2/
cp OUT/AndroidManifest.xml $2/AndroidManifest-Original.xml
rm -r OUT
