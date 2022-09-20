#!/bin/bash

TOOLS_DIR=/data/tools
MAILDIR=/data/2_2012-2014_Postfix.maildir
LOGDIR=/data/log

for d in "$MAILDIR"/* ; do
	python3 "$TOOLS_DIR"/maildir2mbox.py -ar "$d" "$d".mboxtst >> "$LOGDIR"/2_progress.log
	python3 "$TOOLS_DIR"/find_message_id.py "$d" "$d".mboxtst >> "$LOGDIR"/2_diff.log
done

