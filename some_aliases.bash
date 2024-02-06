#Aliases from https://gist.github.com/zachbrowne/8bc414c9f30192067831fafebd14255c ("The ultimate bad ass .bashrc")
# Add an "alert" alias for long running commands.  Use like so: sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
# alias to show the date
alias da='date "+%Y-%m-%d %A %T %Z"'
# Alias's to modified commands
alias cp='cp -i' # check overwrite
alias mv='mv -i' # check overwrite
alias rm='rm -iv' # verbose + check overwrite
alias mkdir='mkdir -p' # create parent files if necessary
# cd into the old directory
alias bd='cd "$OLDPWD"' # go to last directory
# Search files in the current folder
alias findf="find . | grep "
# Count all files (recursively) in the current folder
alias countf="for t in files links directories; do echo \`find . -type \${t:0:1} | wc -l\` \$t; done 2> /dev/null"
# Alias's to show disk space and space used in a folder
alias spacef="du -S | sort -n -r |more"
alias spacedir='du -h --max-depth=1'
alias treef='tree -CAhF --dirsfirst'
alias treedir='tree -CAFd'

# My aliases
alias ll="ls -lh -a"
alias ..="cd .."
alias ~="cd ~"
alias +x="chmod +x"
alias mypath='pwd'
alias showalias='cat ~/.bash_aliases'
alias initcompletion='~/Documents/SituBashScripts/script-completion.bash'
alias install='sudo apt install'
alias ...='cd ../../'
alias ....='cd ../../../'
alias ubuntuversion='lsb_release -a'
alias memory=baobab
alias cdd='qwe'
alias pdfsign='xournal'
alias edit-rc='$EDITOR ~/.bashrc'
alias edit-alias='$EDITOR ~/.bash_aliases'
alias go_work='. go_work'
alias size-format='numfmt --to=si --suffix=o --format="%.3f"'
alias fireblank='firefox -P blank-profile &'
