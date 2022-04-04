alias py='python3 '
alias ipy='ipython '
alias pip='pip3 '
alias venv='python3 -m venv '
alias dj='python3 manage.py '
alias penv='pipenv '




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
alias np='nano -w PKGBUILD'
alias more=less
alias fin='la | grep --color=none '
alias xclip='xclip -selection c '
alias cpwd='pwd | xclip'

alias path="echo \$PATH | tr \":\" \"\n\" | nl "

alias nv='nvim '
alias vim='nvim -u $HOME/.config/nvim/init2.lua '

alias tm='tmux '
alias tmns='tmux new-session -s '
alias tmls='tmux ls '
alias tma='tmux at'
alias tmas='tmux attach-session -t '
alias tmks='tmux kill-session -t '

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" --no-use # This loads nvm
export PATH="${PATH}:/home/ainur/.nvm/versions/node/v17.3.1/bin/"

alias rng='source ranger '

#alias randfile='find . -type f | shuf -n 1'
#alias randvideo='vlc `randfile`'

#export NVIM_CONFIG=~/.config/nvim

export MY_SERVER_IP="176.57.220.212"


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
