This repository contains all my dotfiles. These files can be installed using stow:
```shell
cd dotfiles
stow -t=$HOME -Sv <packages>
```
TODO: find way to manage these packages
- stow (apt)
- starship (curl install)
- carapace (manual, but curl/apt exists)
- init recursive submodules for zsh plugins
- fzf (apt)
- eza (apt, but manual for higher version)
- tpm (command install)
- gitmux (manual/go)
- my get dir function :( (manual)
- lazygit (manual for lower ubuntu versions)
- xclip (apt)
# Theme locations

TODO: unify these themes

### Tmux

Theme is stored as env vars in a theme.sh files in .config/Tmux

> Can read from env var?
Yes

### starship

Theme was found online, is referenced by using "palettes"

> Can read from env var?
Yes

### eza

defaults to using system theme

> Can read from env var?
yes (implicitly)

### zsh autocomplete

sets theme using env vars stored in .config/zsh/editing.sh

> Can read from env var?
yes

### nvim

plugin

> Can read from env var?
No, needs base16

## Terminal Emulator Themes

### Konsole

Stores in profile file
