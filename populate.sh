#!/bin/sh


if [ -f "./populate.env" ]; then
   source ./populate.env
fi

if [[ -z "${OB_DIST}" ]]; then
   echo "OB_DIST is not set"	
fi


shopt -s extglob
rm -rf !(populate.*|README.md|.git)
cp -rf $OB_DIST/* .
