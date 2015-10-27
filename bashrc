source ~/.bash/aliases
source ~/.bash/paths
source ~/.bash/config
source ~/.bash/completions

# use .localrc for settings specific to one system
if [ -f ~/.localrc ]; then
  source ~/.localrc
fi
