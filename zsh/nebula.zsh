# Nebula zsh layer: colours, aliases, prompt.
#
# Source it at the END of your own ~/.zshrc, after oh-my-zsh.sh:
#   source /path/to/cosmic-nebula-theme/zsh/nebula.zsh
#
# Keep machine-specific or private lines (PATH, scaling, nvm, ...) in your
# own ~/.zshrc, not here.
#
#  bg:      #181C22   fg:      #E0E6ED
#  teal:    #4ECDC4   apricot: #FFB38A
#  rose:    #FF7B92   sky:     #82EEFF
#  lilac:   #C9AFF0   periwinkle: #96AAFF
#  muted:   #848E9F   dim:     #5B6478
#
# Dark terminal: teal for commands, sky for strings, lilac for links,
# rose only for what is wrong.

# ── File colours (ls, lsd file names, completion menu) ─────────────────────────

export LS_COLORS="di=1;38;2;150;170;255:ln=3;38;2;201;175;240:ex=1;38;2;78;205;196:*.zip=4;38;2;255;179;138:*.tar=4;38;2;255;179;138:*.gz=4;38;2;255;179;138:*.xz=4;38;2;255;179;138:*.7z=4;38;2;255;179;138:*.deb=4;38;2;255;179;138:*.png=38;2;132;142;159:*.jpg=38;2;132;142;159:*.jpeg=38;2;132;142;159:*.webp=38;2;132;142;159:*.gif=38;2;132;142;159:*.mp4=3;38;2;132;142;159:*.mkv=3;38;2;132;142;159:*.rs=38;2;130;238;255:*.py=38;2;130;238;255:*.js=38;2;130;238;255:*.ts=38;2;130;238;255:*.sh=38;2;130;238;255:*.md=38;2;154;163;181:*.txt=38;2;154;163;181:or=9;38;2;255;123;146"

# oh-my-zsh reads LS_COLORS before this file loads, so refresh the menu colours
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

# ── zsh-autosuggestions / zsh-syntax-highlighting ──────────────────────────────

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=#6B9BAE'

typeset -gA ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[command]='fg=#4ECDC4'
ZSH_HIGHLIGHT_STYLES[builtin]='fg=#4ECDC4'
ZSH_HIGHLIGHT_STYLES[alias]='fg=#4ECDC4'
ZSH_HIGHLIGHT_STYLES[function]='fg=#4ECDC4'
ZSH_HIGHLIGHT_STYLES[hashed-command]='fg=#4ECDC4'
ZSH_HIGHLIGHT_STYLES[suffix-alias]='fg=#4ECDC4,underline'
ZSH_HIGHLIGHT_STYLES[precommand]='fg=#82EEFF,underline'
ZSH_HIGHLIGHT_STYLES[reserved-word]='fg=#96AAFF,bold'
ZSH_HIGHLIGHT_STYLES[unknown-token]='fg=#FF7B92,bold,underline'
ZSH_HIGHLIGHT_STYLES[path]='fg=#9AA3B5,underline'
ZSH_HIGHLIGHT_STYLES[globbing]='fg=#FFB38A'
ZSH_HIGHLIGHT_STYLES[history-expansion]='fg=#FFB38A'
ZSH_HIGHLIGHT_STYLES[single-hyphen-option]='fg=#848E9F'
ZSH_HIGHLIGHT_STYLES[double-hyphen-option]='fg=#848E9F'
ZSH_HIGHLIGHT_STYLES[single-quoted-argument]='fg=#82EEFF'
ZSH_HIGHLIGHT_STYLES[double-quoted-argument]='fg=#82EEFF'
ZSH_HIGHLIGHT_STYLES[dollar-quoted-argument]='fg=#82EEFF'
ZSH_HIGHLIGHT_STYLES[commandseparator]='fg=#848E9F'
ZSH_HIGHLIGHT_STYLES[redirection]='fg=#848E9F'
ZSH_HIGHLIGHT_STYLES[comment]='fg=#5B6478'

# ── Aliases (only when the tool is installed) ──────────────────────────────────

if (( $+commands[lsd] )); then
    alias ls='lsd'
    alias la='lsd -a'
    alias ll='lsd -l'
    alias lla='lsd -la'
fi

# Debian/Ubuntu ship bat as batcat
if (( $+commands[batcat] )); then
    alias cat='batcat'
elif (( $+commands[bat] )); then
    alias cat='bat'
fi

(( $+commands[cosmic-edit] )) && alias edit='cosmic-edit'

if (( $+commands[nvim] )); then
    alias vi='nvim'
    alias vim='nvim'
    alias v='nvim'
fi

# ── Prompt ─────────────────────────────────────────────────────────────────────

# needs ZSH_THEME="" in ~/.zshrc
(( $+commands[starship] )) && eval "$(starship init zsh)"
