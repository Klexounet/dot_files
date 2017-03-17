# Enable color of ls and grep if available
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
fi
# ls aliases
alias ll='ls -ahlF'
alias la='ls -A'
alias l='ls -CF'
# Enable color in tmux
alias tmux='tmux -2'
# Colorized cat
alias pcat='pygmentize -g'
# Git aliases
alias ga='git add'
alias gc='git commit'
alias gd='git diff'
alias gs='git status'
# Keepass alias
alias mdpklex='keepassx Dropbox/Reminiz\ -\ Team/Pwds/mdp_klex.kdbx'

# Copy autocompletion from other function
get_completions(){
    local completion COMP_CWORD COMP_LINE COMP_POINT COMP_WORDS COMPREPLY=()
    # load bash-completion if necessary
    declare -F _completion_loader &>/dev/null || {
        source /usr/share/bash-completion/bash_completion
    }
    COMP_LINE=$*
    COMP_POINT=${#COMP_LINE}
    eval set -- "$@"
    COMP_WORDS=("$@")
    # add '' to COMP_WORDS if the last character of the command line is a space
    [[ ${COMP_LINE[@]: -1} = ' ' ]] && COMP_WORDS+=('')
    # index of the last word
    COMP_CWORD=$(( ${#COMP_WORDS[@]} - 1 ))
    # determine completion function
    completion=$(complete -p "$1" 2>/dev/null | awk '{print $(NF-1)}')
    # run _completion_loader only if necessary
    [[ -n $completion ]] || {
        # load completion
        _completion_loader "$1"
        # detect completion
        completion=$(complete -p "$1" 2>/dev/null | awk '{print $(NF-1)}')
    }
    # ensure completion was detected
    [[ -n $completion ]] || return 1
    # execute completion function
    "$completion"
    # Return array of completions
    echo "${COMPREPLY[@]}"
}

# Attach a docker container with a new bash, with completion
docker-new-bash(){
    docker exec -t -i $1 /bin/bash
}
_docker-new-bash(){
    local cur=${COMP_WORDS[COMP_CWORD]}
    local comp=$(get_completions 'docker attach ')
    COMPREPLY=( $(compgen -W "$comp" -- $cur) )
}
complete -F _docker-new-bash docker-new-bash

