#!/bin/bash

# Clone Repository
git clone https://github.com/miukmiuk/teeworlds-war3
cd teeworlds-war3

# Download Bam Binary
wget https://raw.githubusercontent.com/teeframe/mods-repository/main/resources/bam
chmod 764 bam

# Compile Mod
./bam server_release

# Move Binary & Delete Repository
mv teeworlds_srv ../teeworlds_srv
cd ..
rm -rf teeworlds-war3