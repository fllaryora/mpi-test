#!/bin/bash

COMPILER="mpicc"
export PATH=$PATH:/usr/lib64/mpich2/bin
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/lib64/mpich2/lib
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/lib

if [ -e "Engine" ]
then
	if [ -f "Engine" ]
	then
		echo "rm Engine"
		rm Engine
	else
		echo "no hay Engine"
	fi
else
	echo "no hay Engine"
fi

GCCARGS="-O3 -D_POSIX_C_SOURCE=199309L -lrt -std=c99"

echo "$COMPILER -Wall $GCCARGS -lm -lwjelement -lwjreader -o Engine test.c"
$COMPILER -Wall $GCCARGS -lm  -o Engine test.c
