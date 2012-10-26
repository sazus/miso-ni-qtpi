#!/bin/sh
########################
# This script 
#######################
# It is a script for Qt5beta1 construction of Raspberry Pi.
#  - Instal of the debian package for building Qt5 
#  - running custom bakeqtpi.bash 
#
# The contents of custize bakeqtpi 
#  -Install tool and example from qtbase/qtdeclarative.
#  - It is the addition of LD_LIBRARY_PATH, etc.


ACTION_PATH=`dirname $0`
BAKEQTPI=${ACTION_PATH}/bakeqtpi
BAKEQTPISC=$BAKEQTPI/bakeqtpi.bash
BAKEARG=--httppi

OS=I386

# 
# parse arg chcking
#

while test $# -gt 0
do
	case $1 in
		# HELP
		-h | -help | --help)
			# usage
			echo "Usage"
			echo "		./miso-ni-qtpi.sh [options]"
			echo "options:"
			echo "		32bit		useing i386(32bit) debian os"
			echo "		64bit		useing amd64(64bit) debian os"
			echo ""
			echo "		--help usage info"
			echo ""
			echo ""
			echo "		Please perform with the path of the same directory as a script."
			exit
			;;
		32bit)
			OS=I386
			;;
		64bit)
			OS=AMD64
			;;
		-- | --* | -*i)
			echo "No suport Parameter"
			;;
		*)
			# Done with options (resurve)
			break;
			;;
	esac
	
	shift
done


#
# Error Status Function
#

function error {
	case "$1" in
		1) echo "Error making directories"
		;;
		2) echo "Error Start bakeqtpi not found"
		;;
	esac
	exit -1
}


#
# Install Debian package
#

function dlpackage {
	sudo apt-get install build-essential perl python unzip
	if [ "$OS" == "AMD64" ]; then
		sudo apt-get install ia32-libs libc6-dev-i386 lib32z1-dev
	fi
}


#
# running custom bakeqtpi.bash script
#

function dlbakeptpi {
	if [ ! -d $BAKEQTPI/.git ]; then
		$BAKEQTPISC $BAKEARG
	else
		error 2
	fi
}


#
#Starting Script
#

dlpackage
dlbakeptpi
