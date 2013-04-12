#!/bin/sh
echo "Initial compile"
./apktool b $1
echo "Copying original files to apk"
cp $1/AndroidManifest-Original.xml $1/build/apk/AndroidManifest.xml
cp -r $1/META-INF $1/build/apk/META-INF
echo "Secondary compile"
./apktool b $1
echo "Done!"
