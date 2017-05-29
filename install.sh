#!/bin/sh

# DESTDIR is your target project's dir
DESTDIR=/home/ano/eworkspace/router/rt-n56u

ROOTDIR=`pwd`

if [ ! -d "$DESTDIR" ] ; then
	echo "Target project directory not exists! Terminate."
	exit 1
fi

echo "-------------COPY-FILES---------------"

if [ -d "$ROOTDIR/trunk/user/" ] ; then
	cp -fRv "$ROOTDIR/trunk/user/" "$DESTDIR/trunk/"
fi

if [ -d "$ROOTDIR/trunk/configs/" ] ; then
	cp -fRv "$ROOTDIR/trunk/configs/" "$DESTDIR/trunk/"
fi

if [ -d "$ROOTDIR/trunk/libs/libssl/" ] ; then
	cp -fRv "$ROOTDIR/trunk/libs/libssl/" "$DESTDIR/trunk/"
fi

echo "-------------COPY-END---------------"
