#!/bin/bash
##-------------------------------------------------------------------
## File : hourly_cron.sh
## Author : filebat <https://www.dennyzhang.com/contact>
## Description :
## --
## Created : <2013-09-05>
## Updated: Time-stamp: <2018-07-23 17:43:22>
##-------------------------------------------------------------------
# 0 10 * * * ~/Dropbox/git_code/knowledgebase/setup-mac-devkit/cron/daily_cron.sh

cd "/Users/$(whoami)/git_code"
curl -L https://raw.githubusercontent.com/dennyzhang/git_pull_folder/master/git_pull_folder.py | python

cd "/Users/$(whoami)/Dropbox/private_data/challenges-leetcode-interesting"
# bash automate.sh refresh_md
