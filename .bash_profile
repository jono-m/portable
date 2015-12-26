export PATH=/usr/local/mysql/bin:$PATH
alias lsl="ls -l"
alias cdmit="cd ~/Google\ Drive/MIT"
set insert-completions on
alias editbash="vim ~/Repositories/portable/.bash_profile"
alias editvim="vim ~/Repositories/portable/.vimrc"
alias loadportable="~/Repositories/portable/load.sh"
alias sql6872="mysql -h safar.csail.mit.edu -u mimic2 -p mimic2v26"
alias league="/Applications/League\ of\ Legends.app/Contents/LoL/Play\ League\ Of\ Legends.app/Contents/MacOS/UserKernelLauncher"
alias xpresso="nohup /Applications/lpcxpresso_7.9.2_493/Open\ lpcxpresso >/dev/null &"
alias flushdns="sudo killall -HUP mDNSResponder"
function pushportable() {
	currentDir=$(pwd)
	cd ~/Repositories/portable
	git add -A
	git commit -am .
	git push
	cd $currentDir
}
# Avoid duplicates
export HISTCONTROL=ignoredups:erasedups  
# When the shell exits, append to the history file instead of overwriting it
shopt -s histappend

# After each command, append to the history file and reread it
export PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMAND$'\n'}history -a; history -c; history -r"
