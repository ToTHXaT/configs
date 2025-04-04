alias py='python3 '
alias ipy='ipython '
alias pip='pip3 '
alias venv='python3 -m venv '
alias dj='python3 manage.py '
alias penv='pipenv '
alias pty='poetry '

alias ls='exa --color=always --group-directories-first' 
alias la='exa -a --color=always --group-directories-first' 
alias lla='exa -la --color=always --group-directories-first'  
alias ll='exa -l --color=always --group-directories-first'  
alias lt='exa -aT --color=always --group-directories-first' 
alias ld='exa -D --color=always'
alias lda='exa -Da --color=always'
alias llda='exa -Dal --color=always'
alias l.='exa -a | rg "^\."'

alias rbt='reboot'
alias sdw='shutdown now'

alias cp="cp -i"
alias mv='mv -i'
alias rm='rm -i'
 
alias df='df -h'                          # human-readable sizes
alias free='free -m'                      # show sizes in MB
alias more=less
alias xclip='xclip -selection c '
alias sys='sudo systemctl '

alias path="echo \$PATH | tr \":\" \"\n\" | nl "

alias nv='nvim '
alias vim='nvim -u $HOME/.config/nvim/init2.lua '
alias hx='helix '

alias tm='tmux '
alias tmns='tmux new-session -s '
alias tmls='tmux ls '
alias tma='tmux at'
alias tmas='tmux attach-session -t '
alias tmks='tmux kill-session -t '

alias rng='source ranger '

# git 
alias gb='git branch '
alias gbc='git branch --show-current '
alias gbl='git branch --list '
alias gbD='git branch --delete '

alias gs='git status --short --branch '
alias gsl='git status '

alias ga='git add '
alias gai='git add -i '
alias gaa='git add -a '

alias gcm='git commit -m '

alias gl='git log --oneline '
alias glm='git log '
alias glg='git log --graph --oneline '
alias glgm='git log --graph '
alias gls='git log --stat '

alias gp='git push '
alias gpo='git push origin '
alias gpoc='git push origin `git branch --show-current` '


function pm() {
    cmd=$1
    shift 1
    case $cmd in 
        "i")
            sudo pacman -S $@
        ;;
        "s")    
            pacman -Ss $@
        ;;
        "r")
            sudo pacman -Rns $@ 
        ;;
        "u")
            sudo pacman -Syu $@
        ;;
    esac
}


function aur() {
    cmd=$1
    shift 1
    case $cmd in 
        "i")
            paru -S $@
        ;;
        "s")    
            paru -Ss $@
        ;;
        "r")
            paru -Rns $@ 
        ;;
        "u")
            paru -Syu $@
        ;;
    esac
}
