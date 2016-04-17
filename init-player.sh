#!/bin/sh

RCDIR=/var/crawl/rcs/
INPROGRESSDIR=/var/crawl/rcs/running
TTYRECDIR=/var/crawl/rcs/ttyrecs/$1
DEFAULT_RC=/var/crawl/init.txt
PLAYERNAME=$1

mkdir -p $RCDIR
mkdir -p $INPROGRESSDIR
mkdir -p $TTYRECDIR

if [ ! -f ${RCDIR}/${PLAYERNAME}.rc ]; then
    cp ${DEFAULT_RC} ${RCDIR}/${PLAYERNAME}.rc
fi
