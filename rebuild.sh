#!/bin/bash
cd rt-n56u
git checkout .
git pull

cd ../padavan
git checkout .
git pull
chmod a+x install_O3.sh
bash install_O3.sh

cd ..
pypy redirectOptimize.py rt-n56u O2 O3

cd rt-n56u/trunk
bash rebuild_all.sh
cd ../..
