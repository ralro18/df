#config 12/2023
autoload -U colors && colors

alias \
        cp="cp -iv" \
        mv="mv -iv" \
        rm="rm -vI" \
        ls="ls --color=auto" \
        p="sudo pacman" \
        pdff="groff -ms -T pdf" \
        v="nvim" \
        initialinstall="sudo pacamn -S zathura zathura-pdf-mupdf neovim gnu-free-fonts noto-fonts ranger pavucontrol mpv pacman-contrib htop" \

PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b"

HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zsh/history

autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)

pfetch

# Load zsh-syntax-highlighting; should be last.
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null
