#!/bin/bash -e
##-------------------------------------------------------------------
## File : weekly_cron.sh
## Author : filebat <https://www.dennyzhang.com/contact>
## Description :
## --
## Created : <2013-09-05>
## Updated: Time-stamp: <2018-08-21 20:55:28>
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

LOG_FILE="/var/log/cron/weekly_cron.log"
date=$(date +'%Y%m%d')

if [ -f /var/mail/mac ]; then
    > /var/mail/mac
fi

for d in "cheatsheet.dennyzhang.com" \
             "quiz.dennyzhang.com" \
             "architect.dennyzhang.com" \
             "code.dennyzhang.com" \
             "www.dennyzhang.com"; do
    cd "/Users/zdenny/Dropbox/git_code/$d"
    echo "Recursively git push in $d"
    make git-push >> /var/log/cron/weekly_git_publish_$d.log
done

log "Succeed to run weekly_cron.sh"
## File : weekly_cron.sh ends
