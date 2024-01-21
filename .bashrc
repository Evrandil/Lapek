#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias ll='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias nivm='nvim'
alias obsidajan='obsidian'
alias Obsidajan='obsidian'

PS1='[\u@\h \W]\$ '

##-----------------------------------------------------
## synth-shell-prompt.sh
if [ -f /home/evrandil/.config/synth-shell/synth-shell-prompt.sh ] && [ -n "$( echo $- | grep i )" ]; then
	source /home/evrandil/.config/synth-shell/synth-shell-prompt.sh
fi

##-----------------------------------------------------
## better-ls
#if [ -f /home/evrandil/.config/synth-shell/better-ls.sh ] && [ -n "$( echo $- | grep i )" ]; then
#	source /home/evrandil/.config/synth-shell/better-ls.sh
#fi

##-----------------------------------------------------
## better-history
if [ -f /home/evrandil/.config/synth-shell/better-history.sh ] && [ -n "$( echo $- | grep i )" ]; then
	source /home/evrandil/.config/synth-shell/better-history.sh
fi
