#!/bin/bash

TOOLS_DIR= /home/maciej/devel/maildir2mbox
MAILDIR=/home/maciej/opt
LOGDIR=/home/maciej/log

for d in "$MAILDIR"/* ; do
	python3 "$TOOLS_DIR"/maildir2mbox.py -ar "$d" "$d".mboxtst >> "$LOGDIR"/1_progress.log
	python3 "$TOOLS_DIR"/find_message_id.py "$d" "$d".mboxtst >> "$LOGDIR"/1_diff.log
done

