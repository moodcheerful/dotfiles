# ssh tab autocompletion:
complete -o default -o nospace -W "$(/usr/bin/env ruby -ne 'puts $_.split(/[,\s]+/)[1..-1].reject{|host| host.match(/\*|\?/)} if $_.match(/^\s*Host\s+/);' < $HOME/.ssh/config)" scp sftp ssh

# Terminal colors and prompt:
export CLICOLOR=1
alias ls='ls -GFh'
function parse_git_branch {
   git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
export PS1="\[\033[0;36m\]\u@\h: \w \$(parse_git_branch)\n\\$ \[\033[0m\]"

# aliases
alias l='ls -la'
alias grep='grep -n -i --color=auto'

