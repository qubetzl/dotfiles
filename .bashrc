# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
CUSTOM_BASH_PROFILE=~/scripts/qubetzl-profile.sh
if [ -f ${CUSTOM_BASH_PROFILE} ]; then
	source ${CUSTOM_BASH_PROFILE}
fi
unset CUSTOM_BASH_PROFILE
