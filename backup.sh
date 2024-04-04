#!/bin/bash
shopt -s extglob

# specify all dir here and in sub program clearly for cron
workdir=/host/DATA/ZYAN/WORK/NEXT-GEN-SEQ
cd $workdir

# IR backup
sudo rsync -avls /mnt/IR34/IR/data/IR_Org/data/IRU_Uploads /mnt/win-hp3/IRCAM/

