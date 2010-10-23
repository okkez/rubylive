#!/bin/sh

set -e

YEAR=2010
MONTH=09
DAY=29
BASE=http://doc.okkez.net/archives
DIR=${YEAR}${MONTH}
FILE1=ruby-refm-1.8.7-${YEAR}${MONTH}${DAY}.chm
FILE2=ruby-refm-1.9.2-${YEAR}${MONTH}${DAY}.chm
URL1=${BASE}/${DIR}/${FILE1}
URL2=${BASE}/${DIR}/${FILE2}

wget ${URL1} -O /home/user/Desktop/${FILE1}
wget ${URL2} -O /home/user/Desktop/${FILE2}


