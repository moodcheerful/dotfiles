# Terminal colors and prompt:
export CLICOLOR=1
alias ls='ls -GFh'
function parse_git_branch { 
   git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/' 
} 
export PS1="\[\033[0;36m\]\u@\h: \w \$(parse_git_branch)\n\\$ \[\033[0m\]"

