#!/bin/sh
aptitude install '?source-package(^ruby1\.8$)' -y
aptitude install irb1.8 -y
aptitude install ruby -y
aptitude install gnochm -y

## install Rails3
gem1.9.1 install rails --no-rdoc --no-ri
