#!/bin/bash
# The first parameter passed to this script will be used as an image version. 
# If none is passed, latest will be used as a tag.
if [ -z "${1}" ]; then
   version="latest"
else
   version="${1}"
fi

cd CI_CD

docker build -t faouzibkz/nodejs_app:${version} . 

cd ..
