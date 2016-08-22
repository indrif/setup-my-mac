export TERM="xterm-color"
GREEN=$(tput setaf 2)
BOLD=$(tput bold)
WHITE="\e[97"
RESET=$(tput sgr0)

GIT_PS1_SHOWSTASHSTATE=1
GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWUNTRACKEDFILES=1


source /Library/Developer/CommandLineTools/usr/share/git-core/git-prompt.sh
PS1='${BOLD}\w${RESET}${GREEN}$(__git_ps1 " (%s)")${RESET}\$ '