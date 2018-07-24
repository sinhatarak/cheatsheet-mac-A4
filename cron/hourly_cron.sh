#!/bin/bash
##-------------------------------------------------------------------
## File : hourly_cron.sh
## Author : filebat <https://www.dennyzhang.com/contact>
## Description :
## --
## Created : <2013-09-05>
## Updated: Time-stamp: <2018-07-23 17:43:25>
##-------------------------------------------------------------------
# 0 * * * * ~/Dropbox/git_code/knowledgebase/setup-mac-devkit/cron/hourly_cron.sh
function log {
    local msg=$*
    date_timestamp=$(date +['%Y-%m-%d %H:%M:%S'])
    echo -ne "$date_timestamp $msg\\n"

    if [ -n "$LOG_FILE" ]; then
        echo -ne "$date_timestamp $msg\\n" >> "$LOG_FILE"
    fi
}

################################################################################
LOG_FILE="/tmp/hourly_cron.log"

log "start to run hourly_cron.sh"
cd "/Users/$(whoami)/Dropbox/private_data/work/vmware/code"
curl -L https://raw.githubusercontent.com/dennyzhang/git_pull_folder/master/git_pull_folder.py | python

cd "/Users/$(whoami)/gocode/src/github.com"
curl -L https://raw.githubusercontent.com/dennyzhang/git_pull_folder/master/git_pull_folder.py | python

# log "fetch emails"
# bash $HOME/Dropbox/private_data/emacs_stuff/backup_small/fetch_mail/fetch_mail.sh

log "Succeed to run hourly_cron.sh"
## File : hourly_cron.sh ends
