#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias ll='ls -lh'
alias la='ls -ah'
alias lla='ls -lah'
alias nivm='nvim'
alias obsidajan='obsidian'
alias Obsidajan='obsidian'
alias ipa='ip addr'
alias ipr='ip route'
alias ff='for f in nocaseglob nullglob *.{flac,ape,wv,m4a,aac,mp4,shn,tta,wma,mp3} ; do ffplay -autoexit "$f"; done'
alias fman='compgen -c | fzf | xargs man'
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
