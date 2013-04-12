#!/bin/sh
echo "Initial compile"
./apktool b $1
echo "Copying AndroidManifest-Original to apk"
cp $1/AndroidManifest-Original.xml $1/build/apk/AndroidManifest.xml
echo "Secondary compile"
./apktool b $1
echo "Done!"
