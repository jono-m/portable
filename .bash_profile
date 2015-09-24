export PATH=/usr/local/mysql/bin:$PATH
alias lsl="ls -l"
set insert-completions on
alias editbash="vim ~/Repositories/portable/.bash_profile"
alias editvim="vim ~/Repositories/portable/.vimrc"
alias loadbash="~/Repositories/portable/load.sh"
alias sql6872="mysql -h safar.csail.mit.edu -u mimic2 -p mimic2v26"
alias xpresso="nohup /Applications/lpcxpresso_7.9.2_493/Open\ lpcxpresso >/dev/null &"
function pushportable() {
	currentDir=$(pwd)
	cd ~/Repositories/portable
	git add -A
	git commit -am .
	git push
	cd $currentDir
}
