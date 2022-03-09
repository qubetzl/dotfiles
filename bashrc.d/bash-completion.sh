# We are explicitly loading a system wide "profile" fragment, because it
# seems to be sourced by /etc/profile, but doesn't seem like it has any effect
# on Terminals from a GUI session.
# This script seems to be the intented way of loading bash-completion for all
# users. It also includes checks to prevent the script from being executed 
# multiple times.
# More info at project's repo: https://github.com/scop/bash-completion
if [[ -f /etc/profile.d/bash_completion.sh ]]; then
  . /etc/profile.d/bash_completion.sh
fi
