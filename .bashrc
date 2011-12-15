EDITOR='mate -w'
LESSEDIT='mate -l %lm %f'
TEXEDIT='mate -w -l %d "%s"'
# MACOSX_DEPLOYMENT_TARGET=10.7
# CFLAGS="-arch i386 -arch x86_64"
# ARCHFLAGS="-arch i386 -arch x86_64"
PATH=$PATH:/usr/local/hdf5/bin


function parse_git_dirty {
  [[ $(git status 2> /dev/null | tail -n1) != "nothing to commit (working directory clean)" ]] && echo "*"
}
function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/\1$(parse_git_dirty)/"
}

### COLORS ###
          RED="\[\033[0;31m\]"
    LIGHT_RED="\[\033[1;31m\]"
       YELLOW="\[\033[1;33m\]"
       ORANGE="\[\033[0;33m\]"
         BLUE="\[\033[0;34m\]"
   LIGHT_BLUE="\[\033[1;34m\]"
        GREEN="\[\033[0;32m\]"
  LIGHT_GREEN="\[\033[1;32m\]"
         CYAN="\[\033[0;36m\]"
   LIGHT_CYAN="\[\033[1;36m\]"
       PURPLE="\[\033[0;35m\]"
 LIGHT_PURPLE="\[\033[1;35m\]"
        WHITE="\[\033[1;37m\]"
   LIGHT_GRAY="\[\033[0;37m\]"
        BLACK="\[\033[0;30m\]"
         GRAY="\[\033[1;30m\]"
     NO_COLOR="\[\e[0m\]"

### PROMPT ###
#PS1="${LIGHT_GRAY}[${YELLOW}\$(date +%I:%M:%S) \u ${WHITE}\w${LIGHT_GRAY}]${YELLOW}\$${NO_COLOR} \[\033]0;\u \w\007\]"
PS1="${CYAN}\h:\w\n${WHITE}[\!] ${YELLOW}\$(date +%I:%M:%S) \u${WHITE}:${CYAN}\$(parse_git_branch) ${NO_COLOR}\$ "

alias ipy='ipython qtconsole --pylab=inline'

export EDITOR LESSEDIT TEXEDIT PS1 GIT_PS1_SHOWDIRTYSTATE PATH #MACOSX_DEPLOYMENT_TARGET CFLAGS ARCHFLAGS
source ~/.cinderella.profile