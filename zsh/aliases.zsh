alias py='python3 '
alias ipy='ipython '
alias pip='pip3 '
alias venv='python3 -m venv '
alias dj='python3 manage.py '
alias penv='pipenv '
alias pty='poetry '

alias uvi='uv init '
alias uvil='uv init --lib '
alias uvr='uv run '
alias uvrp='uv run python '
alias us='uv sync '
alias usup='uv sync --upgrade-package '
alias ua='uv add '
alias uad='uv add --dev '
alias ur='uv remove '

alias ls='eza --color=always --group-directories-first' 
alias la='eza -a --color=always --group-directories-first' 
alias lla='eza -la --color=always --group-directories-first'  
alias ll='eza -l --color=always --group-directories-first'  
alias lt='eza -aT --color=always --group-directories-first' 
alias ld='eza -D --color=always'
alias lda='eza -Da --color=always'
alias llda='eza -Dal --color=always'
alias l.='eza -a | rg "^\."'

alias rbt='reboot'
alias sdw='shutdown now'

alias cp="cp -i"
alias mv='mv -i'
alias rm='rm -i'
 
alias df='df -h'
alias free='free -m'
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
alias gi='git init '

alias gb='git branch '
alias gbc='git branch --show-current '
alias gbl='git branch --list '
alias gbD='git branch --delete '

alias gs='git status --short --branch '
alias gsl='git status '
alias gsh='git show '

alias gw='git switch '
alias gwc='git switch -c '

alias ga='git add '
alias gai='git add -i '
alias gaa='git add -a '

alias gc='git commit '
alias gcm='git commit -m '

alias gl='git log --oneline '
alias glm='git log '
alias glg='git log --graph --oneline '
alias glgm='git log --graph '
alias gls='git log --stat '

alias gp='git push '
alias gpo='git push origin '
alias gpoc='git push origin `git branch --show-current` '

alias gl='git pull '
alias glr='git pull --rebase '
alias glra='git pull --rebase --autostash '

alias gd='git diff '


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

function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	IFS= read -r -d '' cwd < "$tmp"
	[ -n "$cwd" ] && [ "$cwd" != "$PWD" ] && builtin cd -- "$cwd"
	rm -f -- "$tmp"
}
