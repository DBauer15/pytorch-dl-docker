#!/bin/bash

CAPS=`nvidia-smi --query-gpu=compute_cap --format=csv,noheader`
C=""

for CAP in ${CAPS}
do
VERS=`echo "(${CAP}*10)/1" | bc`
C="${VERS};${C}"
done

echo ${C::-1}
