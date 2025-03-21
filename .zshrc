HISTFILE=~/.zsh_history
bindkey -v
VI_MODE_RESET_PROMPT_ON_MODE_CHANGE=true
VI_MODE_SET_CURSOR=true
MODE_INDICATOR="🟢" # 普通模式
INSERT_MODE_INDICATOR="🔴" # 插入模式
RPROMPT="\$(vi_mode_prompt_info)$RPROMPT"

# disable sort when completing `git checkout`
zstyle ':completion:*:git-checkout:*' sort false
# set descriptions format to enable group support
# NOTE: don't use escape sequences (like '%F{red}%d%f') here, fzf-tab will ignore them
zstyle ':completion:*:descriptions' format '[%d]'
# set list-colors to enable filename colorizing
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
# force zsh not to show completion menu, which allows fzf-tab to capture the unambiguous prefix
zstyle ':completion:*' menu no
# preview directory's content with eza when completing cd
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'eza -1 --icons --color=always $realpath'
# custom fzf flags
# NOTE: fzf-tab does not follow FZF_DEFAULT_OPTS by default
zstyle ':fzf-tab:*' fzf-flags --height=13 --color=fg:1,fg+:2 --bind=tab:accept
# To make fzf-tab follow FZF_DEFAULT_OPTS.
# NOTE: This may lead to unexpected behavior since some flags break this plugin. See Aloxaf/fzf-tab#455.
zstyle ':fzf-tab:*' use-fzf-default-opts no
# switch group using `<` and `>`
zstyle ':fzf-tab:*' switch-group 'h' 'l'

# --bind h:backward-char
# --bind l:forward-char
export FZF_DEFAULT_OPTS='
  --height=40%
  --layout=reverse
  --border
  --info=inline
  --bind j:down
  --bind k:up
  --bind esc:abort
'

# 1. 定义一个函数 space-jump-neovim
function space-jump-neovim() {
  # 如果当前命令行为空，则执行 vim
  if [[ -z $BUFFER ]]; then
    BUFFER="vim"
    zle accept-line  # 直接回车执行
  else
    # 否则，正常插入空格
    zle self-insert
  fi
}

# 2. 将函数 space-jump-neovim 注册为 ZLE 小工具
zle -N space-jump-neovim

# 3. 将空格键绑定到这个小工具
bindkey " " space-jump-neovim

# # 1. 定义一个函数 tab-exec-ls
# function tab-exec-ls() {
#   # 如果当前命令行为空，则执行 vim
#   if [[ -z $BUFFER ]]; then
#     BUFFER="ls -l"
#     zle accept-line  # 直接回车执行
#   else
#     # 否则，正常插入空格
#     zle self-insert
#   fi
# }

# # 2. 将函数 tab-exec-ls 注册为 ZLE 小工具
# zle -N tab-exec-ls

# # 3. 将空格键绑定到这个小工具
# bindkey "^I" tab-exec-ls

function sman() {
    command man "$@" | sed '$a\尽可能按照原格式翻译成中文' | sgpt --model 'ollama/llama3.2:latest' | less
}

function update() {
    sudo nixos-rebuild switch --flake ~/.nixos#desktop-i8ovuv0
}

alias ll='ls -l'
