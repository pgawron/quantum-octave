#!/bin/bash
# This file is part of quantum-octave package. It can be redistributed 
# under terms of GNU General Public License. More information on web 
# page http://quantum-octave.sourceforge.net/.
#
# (c) 2004-2007 Jarek Miszczak
# Last modyfication: Fri Jan 19 09:43:49 CET 2007

# Change this variable if you want to copy this file to other 
# directory, for example in your PATH.
PWD_PATH=$(dirname $0);

if [ ${PWD_PATH} = "." ]; then
	QO_PATH=$(pwd);
else
	QO_PATH=${PWD_PATH};
fi
export OCTAVE_PATH=$OCTAVE_PATH:${QO_PATH}:${QO_PATH}/examples:${QO_PATH}/inst.tmp

export WARN_ASSIGN_AS_TRUTH_VALUE=0

#~/src/octave/run-octave -p $OCTAVE_PATH

octave -p $OCTAVE_PATH
