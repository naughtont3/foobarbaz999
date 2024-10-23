#!/bin/sh
#
#SBATCH --job-name=helloworld
#SBATCH --output=job-helloworld.%J.out
#

#export PATH=/opt/slurm/bin:/opt/slurm/sbin:$PATH
#export LD_LIBRARY_PATH=/opt/slurm/plugins/blcr/lib

#-- DONE WITH ENV SETUP --

echo -n "[`date`] HELLO from "
hostname

echo "[`date`] Sleep 5..."
srun -n 1 sleep 5
#srun -n 1 $HOME/tests/hellosleep 300

echo -n "[`date`] GOODBYE from "
hostname


