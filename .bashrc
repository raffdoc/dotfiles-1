export R_HOME=/Library/Frameworks/R.framework/Resources
export R_HISTFILE=~/.Rhistory
export CUDA_ROOT=/usr/local/cuda
export PATH=/usr/local/bin:${PATH/\/usr\/local\/bin:/}
export PATH=$PATH:/usr/texbin:$R_HOME/bin/:~/Code/julia:$CUDA_ROOT/bin
export TEXINPUTS=${TEXINPUTS}://Library/Frameworks/R.framework/Versions/2.14/Resources/share/texmf/tex/latex
export OMP_NUM_THREADS=4

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
export PS1="${CYAN}\h:\w\n${WHITE}[\!] ${YELLOW}\$(date +%I:%M:%S) \u${WHITE}:${CYAN}\$(parse_git_branch) ${NO_COLOR}\$ "

alias ipy='ipython notebook --pylab=inline'
