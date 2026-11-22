# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

eval "$(starship init zsh)"
eval "$(zoxide init zsh)"

alias ls="eza --icons"
alias ll="eza -l --icons"
alias la="eza -la --icons"

alias editstarship="vim ~/.config/starship.toml"
alias editghost="vim ~/.config/ghostty/config"

# Git shortcuts
alias gs="git status"
alias ga="git add"
alias gc="git commit -m"
alias gp="git push"

# Quick directory navigation
alias dev="cd ~/Development"
alias docs="cd ~/Documents"

source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

if [[ -n "$SSH_CONNECTION" ]]; then
  export TERM=xterm-256color
fi

fastfetch

PATH="/Users/tarynhuang/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/Users/tarynhuang/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/Users/tarynhuang/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/Users/tarynhuang/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/Users/tarynhuang/perl5"; export PERL_MM_OPT;
