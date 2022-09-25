#!/bin/bash

for d in /* ; 
do
	for d1 in `echo $d`/* ;
        do
		echo $d1
		echo $(basename $d1).mbox
                #python3 `echo $1`maildir2mbox.py "$d1" -r $(basename $d1).mbox
                #cp -r "$d1" $(basename $d)
        done
done
