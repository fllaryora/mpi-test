#!/bin/bash

export PATH=$PATH:/usr/lib64/mpich2/bin
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/lib64/mpich2/lib
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/lib

mpdboot -n 1
mpiexec -l -np 4 ./Engine
