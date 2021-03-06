# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/mo7amd/.oh-my-zsh"

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="robbyrussell"
ZSH_THEME="awesomepanda"

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  tmux
  osx
  sudo
  ssh-agent
  xcode
  vscode
  git-flow
  brew
  zsh-autosuggestions
  npm
  npx
  nvm
  history
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias rbk="cd ~/Documents/rubikal"
alias sb="cd ~/Documents/sandbox"
alias rooster="cd ~/Documents/rubikal/itk-projects/FE/ucoach-rooster"
alias rtncom="cd ~/Documents/rubikal/rtn/com"
alias rtncom_next="cd /Users/mo7amd/Documents/rubikal/rtn/com_next"
alias rtn="cd ~/Documents/rubikal/rtn"
alias vim='/Applications/MacVim.app/Contents/MacOS/Vim'
alias ctags="`brew --prefix`/bin/ctags"
alias localhost="lsof -PiTCP -sTCP:LISTEN"
alias mo="cd ~/Documents/mohamed.khaled"
alias side="cd ~/Documents/side.projects"
alias gblbd="git branch --sort=-committerdate --format='%(HEAD) %(color:yellow)%(refname:short)%(color:reset) - %(color:green)%(upstream:remotename)%(color:reset) - %(committerdate:relative)%(color:reset)'"
alias gblnob="gblbd | grep -vE 'origin'"
alias gbl2m="gblbd | grep 'weeks'"
alias rm="rm -i"
alias run="npm run"
alias id="npm i -D"
alias is="npm i -S"
alias dockerup="docker-compose -f /Users/mo7amd/Documents/rubikal/RTN/rtn_docker_local/docker-compose.yml up -d"
alias dockerdown="docker-compose -f /Users/mo7amd/Documents/rubikal/RTN/rtn_docker_local/docker-compose.yml down"
alias gotoms="cd /Users/mo7amd/Documents/rubikal/RTN/rtn_micros"
alias pm2up="gotoms && pm2 start startup.json"
alias pm2down="gotoms && pm2 delete all"
alias devup="dockerup && pm2up"
alias devdown="dockerdown && pm2down"
alias nextup="rtncom_next && run dev"
alias killStunnel="sudo kill -9 $(ps aux | grep stunnel | grep -v grep | awk '{print $2}')"
alias rtnStunnel="stunnel /usr/local/etc/stunnel/stunnel-rtn.conf"
alias clearRedis="docker exec -it rtn_cache redis-cli FLUSHALL"
alias devCheck="docker ps && pm2 list"
alias mdump="mongodump --host 167.71.125.173 --username rtn07 --password yHn789#_We. --authenticationDatabase admin --db rtn  --gzip -o qa --collection"
alias mrestore="mongorestore --db rtn --dir qa/rtn/ --drop --gzip"
alias mcleanup="rm -rf qa"
# Set CLICOLOR if you want Ansi Colors in iTerm2 
export CLICOLOR=1

# Set colors to match iTerm2 Terminal Colors
export TERM=xterm-256color


export NVM_DIR="/Users/mo7amd/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm


export FZF_DEFAULT_COMMAND="rg --files --no-ignore-vcs --hidden"
export FZF_DEFAULT_OPTS="--height 40% --layout=reverse --preview '(highlight -O ansi {} || cat {}) 2> /dev/null | head -500'"

zstyle ':omz:module:tmux' auto-start 'yes'

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
if [ -x /usr/libexec/path_helper ]; then
	PATH=""
	eval `/usr/libexec/path_helper -s`
fi

bindkey -v
