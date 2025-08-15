# Q pre block. Keep at the top of this file.
[[ -f "${HOME}/Library/Application Support/amazon-q/shell/zshrc.pre.zsh" ]] && builtin source "${HOME}/Library/Application Support/amazon-q/shell/zshrc.pre.zsh"
# >>> my aliases >>>
alias gsw="git switch"
alias gswc="git switch -c"
alias gst="git status"
alias gl="git pull"
alias gm='git merge'
alias gp='git push'
alias gc='git commit'
alias gca='git commit --amend'
alias c="code ."
alias cu="cursor ."
alias cn="echo -e '\n🗑️  Removing node_modules...' && rm -rf node_modules && echo -e '\n🧹  Clearing npm cache...' && npm cache clean --force && echo -e '\n✅  Task completed successfully!'"
alias pretty="npx prettier --write ."
alias prettyauto="npx prettier --write .  changelog.md readme.md src/"
alias ..="cd .."
alias ...="cd ../.."
alias .="cd ~"
alias ni="echo -e '\n📦  Installing dependencies...' && npm install && echo -e '\n✅  Task completed successfully!'"
alias nie="echo -e '\n📦  Installing exact dependencies...' && npm install save-exact && echo -e '\n✅  Task completed successfully!'"
# <<< my aliases <<<



# >>> initialize zsh-autosuggestions : Add the following to the end of ~/.zshrc >>>
source $HOMEBREW_PREFIX/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# >>> initialize zsh-syntax-highlighting : Add the following to the end of ~/.zshrc >>>
source $HOMEBREW_PREFIX/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# >>> Initialize starship prompt : Add the following to the end of ~/.zshrc >>>
eval "$(starship init zsh)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Set default Node version (latest node) that is used in any new shell
nvm alias default node

# Q post block. Keep at the bottom of this file.
[[ -f "${HOME}/Library/Application Support/amazon-q/shell/zshrc.post.zsh" ]] && builtin source "${HOME}/Library/Application Support/amazon-q/shell/zshrc.post.zsh"

# This loads starship
STARSHIP_CONFIG=${HOME}/.config/starship.toml
eval "$(starship init zsh)"
