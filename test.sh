#!/bin/bash

FILE="README.md" # file you want to search through
TESTSTRING="smarketing" # text you want to check if it exists in the file

echo "As a user of the WIKI I want to find $TESTSTRING in file $FILE"
if cat "$FILE" | grep -q "$TESTSTRING"
then 
  echo "SUCCESS: $TESTSTRING" found in "$FILE"
  exit 0; # yes, text exists and exit script with code 0, which means successful
else
  echo "FAILURE: $TESTSTRING" not found in "$FILE"
  exit 1; # no, text does not exist thus exit script with code 1 (or > 0), which means error
fi
