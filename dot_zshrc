case `uname` in
    Darwin)
        source /usr/local/share/antigen/antigen.zsh
    ;;
    Linux)
        source /usr/share/zsh-antigen/antigen.zsh
    ;;
esac
    
antigen use oh-my-zsh
antigen bundle lukechilds/zsh-nvm
antigen bundle git
antigen bundle docker
antigen bundle lein
antigen bundle kubectl
antigen bundle command-not-found
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle gmatheu/zsh-plugins profile-secrets
antigen bundle kube-ps1
antigen theme robbyrussell
antigen bundle zsh-users/zsh-autosuggestions
antigen apply

export PATH="/usr/local/sbin:$PATH"
export GPG_ID=giako@giako.space
export GPG_TTY=`tty`
export TERM=xterm-256color

# Mac specific settings
case `uname` in
    Darwin)
        test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
        export ANDROID_HOME=$HOME/Library/Android/sdk
        export PATH=$PATH:$ANDROID_HOME/emulator
        export PATH=$PATH:$ANDROID_HOME/tools
        export PATH=$PATH:$ANDROID_HOME/tools/bin
        export PATH=$PATH:$ANDROID_HOME/platform-tools
        source "/usr/local/opt/kube-ps1/share/kube-ps1.sh"
        PS1='$(kube_ps1)'$PS1
    ;;
    Linux)
        PROMPT=$PROMPT'$(kube_ps1) '
    ;;
    esac

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
