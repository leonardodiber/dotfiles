setopt auto_pushd
setopt pushd_ignore_dups
setopt pushdminus
setopt auto_cd

alias -g ...='../..'
alias -g ....='../../..'
alias -g .....='../../../..'
alias -g ......='../../../../..'

alias -- -='cd -'
alias 1='cd -1'
alias 2='cd -2'
alias 3='cd -3'
alias 4='cd -4'
alias 5='cd -5'
alias 6='cd -6'
alias 7='cd -7'
alias 8='cd -8'
alias 9='cd -9'

alias md='mkdir -p'
alias rd=rmdir

function d () {
  if [[ -n $1 ]]; then
    dirs "$@"
  else
    dirs -v | head -n 10
  fi
}
compdef _dirs d

# List directory contents
alias lsa='ls -lah --color=auto'
alias l='ls -lah --color=auto'
alias ll='ls -lh --color=auto'
alias la='ls -lAh --color=auto'
alias ls='ls --color=auto'
alias l.='ls -d .* --color=auto'

# Quick aliases to edit config files
alias kconf='vim ~/.config/kitty/kitty.conf'
alias zshrc='vim ~/.zshrc'
alias asdfrc='vim ~/.asdfrc'
alias awesomerc='vim ~/.config/awesome/rc.lua'
alias aliases='vim ~/.config/.zsh/aliases.zsh'

# useful aliases
alias vim="nvim"
alias update-nvim-stable='asdf uninstall neovim stable && asdf install neovim stable'
alias update-nvim-nightly='asdf uninstall neovim nightly && asdf install neovim nightly'
alias update-nvim-master='asdf uninstall neovim ref:master && asdf install neovim ref:master'
alias p10k-update='git -C ~/.config/.zsh/powerlevel10k pull'
alias resource='echo Reshiming and resourcing... && asdf reshim && source ~/.zshrc && echo Done!'
alias newcolor='bash -c "$(wget -qO- https://git.io/vQgMr)" && echo "background_opacity 0.75" >> ~/.config/kitty/colors.conf'
