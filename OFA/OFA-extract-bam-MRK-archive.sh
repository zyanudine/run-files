#!/bin/bash
shopt -s extglob

# comment, mount IR34 arcive disk (usb connection to 90.111) as IR34 on 90.6 , so it can go through archive data
: ' 
on 90.111, connect archive disk 16
sudo mount /dev/sdg1 /media/zyan/disk1/
add to smb.conf
[IR34-archive]
   path = /media/zyan/disk1/IR34
   guest ok = no
   read only = no
   create mask = 7777
on 90.6
sudo umount /mnt/IR34  # make sure there is no other service in need of this
sudo mount -o username=zyan,password=mmmmmm //192.168.90.111/IR34-archive/data /mnt/IR34 
after finish
sudo umount /mnt/IR34
mount back 90.34
# check MRK numbers 
ls /mnt/IR34/IR/data/IR_Org/ion.reporter@lifetech.com/ | grep MRK | wc
     67      67    2848  # on IR34 now
ls /media/zyan/disk1/IR34/data/IR/data/IR_Org/ion.reporter@lifetech.com/ | grep MRK | wc
     99      99    4125  # on IR34 archive disk 16
ls /media/zyan/MMD_2/OFA_extract_IR_bam/IR34/ion.reporter@lifetech.com/ | grep MRK | wc
    137     137    5679   # total on MMD_2, so some are pushed to IR34 later from TS after reimage, which are like dups
'


# extract bam files from IR server for OFA projects

dtype="ir5.0-bam-extract"  # null
project="MRK"  # null
plgin=all  # null
seqserver=IR34  # seq server with bam files etc., TS, TS30/1/2 etc.
samples=null  # null
cpdir=OFA_extract_IR_bam  # share folder dir
sharedir=/media/zyan/MMD_2

#nohup bash ./codes/Ion-data-tran-IR5.0.sh $dtype $project $plgin $seqserver $cpdir 2>&1 | nohup tee -a tmp/ofa-extract-bam.nohup
cd /host/DATA/ZYAN/WORK/NEXT-GEN-SEQ/    # cron process must give absolute dir
nohup bash ./codes/Ion-data-tran-IR5.0-new.sh $dtype $project $plgin $seqserver $cpdir $sharedir 2>&1 | nohup tee -a tmp/ofa-extract-bam.nohup

