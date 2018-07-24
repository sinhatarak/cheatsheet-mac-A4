#!/bin/bash
##-------------------------------------------------------------------
## File : weekly_cron.sh
## Author : filebat <https://www.dennyzhang.com/contact>
## Description :
## --
## Created : <2013-09-05>
## Updated: Time-stamp: <2018-07-23 17:43:15>
##-------------------------------------------------------------------
# 0 20 * * 0 ~/Dropbox/git_code/knowledgebase/setup-mac-devkit/cron/weekly_cron.sh

function log() {
    local msg=$*
    date_timestamp=$(date +['%Y-%m-%d %H:%M:%S'])
    echo -ne "$date_timestamp $msg\\n"
    
    if [ -n "$LOG_FILE" ]; then
        echo -ne "$date_timestamp $msg\\n" >> "$LOG_FILE"
    fi
}

LOG_FILE="/tmp/weekly_cron.log"
date=$(date +'%Y%m%d')

> /var/mail/mac
log "Succeed to run weekly_cron.sh"
## File : weekly_cron.sh ends
