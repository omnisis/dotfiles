alias gemacs='~/Applications/Emacs.app/Contents/MacOS/Emacs'


alias e='emacsclient'
alias ex='emacsclient -c'
alias es='emacs --daemon'
alias ess='emacs --daemon=$1'

esls() {
  local serverdir="${TMPDIR:-/tmp}/emacs${UID}"
  local -a servers
  for file in ${serverdir}/*; do
  if [[ -S ${file} ]]; then
    servers+=("${file##*/}")  
  fi
  done
  echo "${servers[@]}"
}
