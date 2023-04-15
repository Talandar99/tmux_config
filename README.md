# tmux_config

## Requirements
- linux filesystem
- tmux installed 
- git 	

## How to install?
- go to .config directory `cd ~/.config`
- clone repo `git clone https://github.com/Talandar99/tmux_config` 
- rename it `mv tmux_config tmux`
- launch tmux 
- install plugins by pressing `prefix`,`[I]`
  - prefix == `[Alt]`+`[q]`
- add this to your .bashrc:
```bash
export PATH=$PATH:$HOME/.config/tmux/plugins/tmuxifier/bin
eval "$(tmuxifier init -)"
```
## How to upadate?
- go into tmux directory `cd ~/.config/tmux`
- pull new changes `git pull`

## Keybinds
- prefix `[Alt]`+`[q]`
- vertical split `prefix`,`["]`
- maximize split (toggle) `prefix`,`[m]`
- movement is based on vim keybinds so use `[h]` `[j]` `[k]` `[l]` instead of arrows
- relaad configuration after changes `prefix`,`[R]`
