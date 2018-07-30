#!/usr/bin/env bash
set -e

function update_codecommit(){
    local code_dir=${1?}
    repo_list="devops_blog blog_cdn"
    [ -d "$code_dir/codecommit" ] || mkdir -p "$code_dir/codecommit"
    cd "$code_dir/codecommit"
    for repo in ${repo_list[*]}; do
        if [ ! -d "$repo" ]; then
            echo "git clone ssh://git-codecommit.us-east-1.amazonaws.com/v1/repos/${repo}"
            git clone "ssh://git-codecommit.us-east-1.amazonaws.com/v1/repos/${repo}"
        else
            echo "Update $repo"
            (cd "$repo" && git pull origin master)
        fi
    done
}


function update_bitbucket(){
    local code_dir=${1?}
    repo_list="intuit-market-design intuit-budget-advising"
    [ -d "$code_dir/bitbucket" ] || mkdir -p "$code_dir/bitbucket"
    cd "$code_dir/bitbucket"
    for repo in ${repo_list[*]}; do
        if [ ! -d "$repo" ]; then
            echo "git clone git@bitbucket.org:dennyzhang/${repo}.git"
            git clone "git@bitbucket.org:dennyzhang/${repo}.git"
        else
            echo "Update $repo"
            (cd "$repo" && git pull origin master)
        fi
    done
}

function update_github(){
    local code_dir=${1?}
    repo_list="devops_public code-with-docker chatops_slack cleanup_old_files dennytest detect_suspicious_process developer-free-saas devops_docker_image devops_jenkins directory-cli-tool droplet-neighbor-check elasticsearch-cli-tool images jenkins_image monitor-docker-slack monitoring nmap-scan-docker node_status_in_json python-hosts-tool python-selenium remote-commands-servers shadowsocks-vpn-docker sonarqube-by-docker terraform_jenkins_digitalocean today-learning"
    [ -d "$code_dir/github" ] || mkdir -p "$code_dir/github"
    cd "$code_dir/github"
    for repo in ${repo_list[*]}; do
        if [ ! -d "$repo" ]; then
            echo "git clone git@github.com:dennyzhang/${repo}.git"
            git clone "git@github.com:dennyzhang/${repo}.git"
        else
            echo "Update $repo"
            (cd "$repo" && git pull origin master)
        fi
    done
}

function update_cheatsheet(){
    local code_dir=${1?}
    repo_list="cheatsheet-knative-A4 cheatsheet-ruby-A4 cheatsheet-vim-A4 cheatsheet-tmux-A4 cheatsheet-bosh-A4 cheatsheet-docker-A4 cheatsheet-emacs-A4 cheatsheet-golang-A4 cheatsheet-jenkins-groovy-A4 cheatsheet-living-in-ca cheatsheet-python-A4 cheatsheet-uaac-A4 cheatsheet-jq-A4"
    [ -d "$code_dir/cheatsheet" ] || mkdir -p "$code_dir/cheatsheet"
    cd "$code_dir/cheatsheet"
    for repo in ${repo_list[*]}; do
        if [ ! -d "$repo" ]; then
            echo "git clone git@github.com:dennyzhang/${repo}.git"
            git clone "git@github.com:dennyzhang/${repo}.git"
        else
            echo "Update $repo"
            (cd "$repo" && git pull origin master)
        fi
    done
}

function update_challenges(){
    local code_dir=${1?}
    repo_list="challenges-cloudformation-jenkins challenges-chef challenges-jenkins-groovy challenges-aws-ecs challenges-shell challenges-system-design challenges-golang-datastructure challenges-python-datastructure challenges-linux-signals challenges-leetcode-interesting"
    [ -d "$code_dir/challenges" ] || mkdir -p "$code_dir/challenges"
    cd "$code_dir/challenges"
    for repo in ${repo_list[*]}; do
        if [ ! -d "$repo" ]; then
            echo "git clone git@github.com:dennyzhang/${repo}.git"
            git clone "git@github.com:dennyzhang/${repo}.git"
        else
            (cd "$repo" && git pull origin master)
        fi
    done
}

function update_knowledgebase(){
    local code_dir=${1?}
    repo_list="book-reading-cloud linkedin-grow-influence maintain-it-blog maintain-github-repos cheatsheet-living-in-ca developer-technical-selling setup-mac-devkit"
    [ -d "$code_dir/knowledgebase" ] || mkdir -p "$code_dir/knowledgebase"
    cd "$code_dir/knowledgebase"
    for repo in ${repo_list[*]}; do
        if [ ! -d "$repo" ]; then
            echo "git clone git@github.com:dennyzhang/${repo}.git"
            git clone "git@github.com:dennyzhang/${repo}.git"
        else
            (cd "$repo" && git pull origin master)
        fi
    done
}

function update_kubernetes(){
    local code_dir=${1?}
    repo_list="kubernetes-security-practice cheatsheet-kubernetes-A4 challenges-kubernetes challenges-k8s-istio prepare-k8s-cka challenges-k8s-crd"
    [ -d "$code_dir/kubernetes" ] || mkdir -p "$code_dir/kubernetes"
    cd "$code_dir/kubernetes"
    for repo in ${repo_list[*]}; do
        if [ ! -d "$repo" ]; then
            echo "git clone git@github.com:dennyzhang/${repo}.git"
            git clone "git@github.com:dennyzhang/${repo}.git"
        else
            (cd "$repo" && git pull origin master)
        fi
    done
}

update_kubernetes "$HOME/Dropbox/git_code"
update_cheatsheet "$HOME/Dropbox/git_code"
update_knowledgebase "$HOME/Dropbox/git_code"
update_challenges "$HOME/Dropbox/git_code"

update_github "$HOME/git_code"
update_codecommit "$HOME/git_code"
update_bitbucket "$HOME/git_code"
