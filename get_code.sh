#!/bin/bash

fileid="1R8p_BpWf1k0XcEQW2IC-9dSzDBTZF7zp"
MODULENAME="MODULE_TESTBED"

echo "File will be downloaded in current dir"

curl "https://drive.usercontent.google.com/download?id=${fileid}&export=download&authuser=0&confirm=t" \
  -o ${MODULENAME}.zip

if [ $? -ne 0 ]; then
    echo "curl failed."
    exit 1
fi

echo "File downloaded in dir: ./$dir"

unzip $MODULENAME.zip -d $MODULENAME
echo "unzipped zip file"

rm $MODULENAME.zip
rm -rf $MODULENAME/__MACOSX

echo "cleanup done"
