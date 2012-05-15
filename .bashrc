export R_HOME=/Library/Frameworks/R.framework/Resources
export R_HISTFILE=~/.Rhistory
export PATH=/usr/local/bin:${PATH}
export PATH=$PATH:/usr/texbin:$R_HOME/bin/:~/Code/julia
export TEXINPUTS=${TEXINPUTS}://Library/Frameworks/R.framework/Versions/2.14/Resources/share/texmf/tex/latex
export OMP_NUM_THREADS=4
export DEVELOPER_DIR=/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer
export EDITOR='mate -w'
# When TeX gives an error message relating to a file, you can enter e to edit the file
export TEXEDIT='mate -w -l %d "%s"'
# The less pager supports editing the file being viewed by pressing v.
export LESSEDIT='mate -l %lm %f'
export GIT_EDITOR="mate --name 'Git Commit Message' -w -l 1"

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
export PS1="${CYAN}\h:\w\n${WHITE}[\!] ${YELLOW}\$(date +%I:%M:%S) \u${WHITE}:${CYAN}\$(parse_git_branch) ${NO_COLOR}\$ "

alias ipy='ipython notebook --pylab=inline'
