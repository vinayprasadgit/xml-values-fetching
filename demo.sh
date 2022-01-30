#!/bin/bash

sed -e '1i <test>' -e '$a</test>' sam.xml > sam.out

AUTHOR1=$(xmllint --xpath '//property[@name="prefix"]/value/text()' sam.out)
AUTH=$(xmllint --xpath '//author/text()' sam.out)

echo $AUTH
echo $AUTHOR1

