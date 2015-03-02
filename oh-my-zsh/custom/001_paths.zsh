# Add yourself some shortcuts to projects you often work on
# Example:
#
# brainstormr=/Users/robbyrussell/Projects/development/planetargon/brainstormr
#


# prints curr system path
curr_path() {
  echo $PATH
}

# prepends directory to start of system path
prepend_path() {
  local p=$1
  if [[ -n "$p" ]]; then        
    echo $PATH | grep -qE "(:)?$p(:)?" || export PATH="$p:$PATH"
  fi
}

# appends directory to end of system path
append_path() {
  local p=$1
  if [[ -n "$p" ]]; then
    echo $PATH | grep -qe "(:)?$p(:)?" || export PATH="$PATH:$p"
  fi
}

# removes directory from system path
remove_path() {
  local p=$1
  if [[ -n "$p" ]]; then
    local repl="s!(:)?$p(:)?!!g"
    local p2="`echo $PATH | sed -Ee $repl`"
    export PATH=$p2
  fi
}

# removes common tempfiles from a given directory
sweep() {
  if [ -z "$1" ]; then
    echo "Must supply a directory!"
    return
  fi
  for f in `find $1 -maxdepth 1 \( -regex '^.*~$' -o -regex '^[#].*$' \)`; do
    rm -fr $f && echo "Removed $f"
  done
}


# Setup some required common paths
remove_path /usr/local/bin
prepend_path /usr/local/bin
prepend_path ~/bin
