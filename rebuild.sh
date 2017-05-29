#!/bin/bash
cd rt-n56u
git pull
cd ..
pypy redirectOptimize.py rt-n56u O2 O3
cd padavan
git pull
chmod a+x install.sh
bash install.sh

cd ../rt-n56u/trunk
./rebuild_all.sh
cd ../..
