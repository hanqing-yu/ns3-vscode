#!/bin/bash

if [ -d "./ns-allinone-3.34" ]; 
then
    echo "Dir exists, skip downloading ..";
else
    wget http://www.nsnam.org/release/ns-allinone-3.34.tar.bz2;
    tar -xf ./ns-allinone-3.34.tar.bz2;
    rm ./ns-allinone-3.34.tar.bz2;
fi
docker build -t ns3 .
docker run --name="ns3-vscode" -it ns3 bash

