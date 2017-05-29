#!/bin/bash

echo "build for newifi mini"
cp configs/templates/newifimini_mini.config .config
./clear_tree
./build_firmware
mv images/NEWIFI-MINI_*.trx /media/Storage/workspace/router/firmware/

echo "build for newifi y1s"
echo "build GWAN"
cp configs/boards/NEWIFI-Y1S/Gboard.h configs/boards/NEWIFI-Y1S/board.h
cp configs/boards/NEWIFI-Y1S/Gkernel-3.4.x.config configs/boards/NEWIFI-Y1S/kernel-3.4.x.config
cp configs/templates/newifiy1s_mini.config .config
./clear_tree
./build_firmware
mv images/NEWIFI-Y1S_*.trx /media/Storage/workspace/router/firmware/GNEWIFI-Y1S_3.4.3.9-099.trx
echo "build MWAN"
cp configs/boards/NEWIFI-Y1S/Mboard.h configs/boards/NEWIFI-Y1S/board.h
cp configs/boards/NEWIFI-Y1S/Mkernel-3.4.x.config configs/boards/NEWIFI-Y1S/kernel-3.4.x.config
cp configs/templates/newifiy1s_mini.config .config
./clear_tree
./build_firmware
mv images/NEWIFI-Y1S_*.trx /media/Storage/workspace/router/firmware/MNEWIFI-Y1S_3.4.3.9-099.trx

echo "build for newifi d1"
cp configs/templates/newifid1_mini.config .config
./clear_tree
./build_firmware
mv images/NEWIFI-D1_*.trx /media/Storage/workspace/router/firmware/

echo "build for psg1218"
cp configs/templates/psg1218_mini.config .config
./clear_tree
./build_firmware
mv images/PSG1218_*.trx /media/Storage/workspace/router/firmware/
