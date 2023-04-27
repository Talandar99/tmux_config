# tmux_config

## Requirements
- unix based filesystem
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
export EDITOR=nvim
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

## Tmuxifier usage

1. Create new session
```
tmuxifier new-session session_name
```
2. Now read manual to understand how to create session layout, i also recomend tmuxifier github for more deatails : https://github.com/jimeh/tmuxifier
3. you can load session
```
tmuxifier load-session session_name
```
4. sessions are stored as bash script in $HOME/.config/tmux/plugins/layouts

#### Example (tmuxifier session config)
```Bash
# Set a custom session root path. Default is `$HOME`.
# Must be called before `initialize_session`.
session_root "~/session_name/"

# Create session with specified name if it does not already exist. If no
# argument is given, session name will be based on layout file name.
if initialize_session "session_name"; then

    # Create a new window inline within session layout definition.
	new_window "session_name"
    
    # Split horizontal
	split_h 5
    
    # select pane nr 1 
	select_pane 1
    
    # run command
	run_cmd "ls -all"
fi

# Finalize session creation and switch/attach to it.
finalize_and_go_to_session
```
