#running ssh agent
if ! pgrep -u "$USER" ssh-agent > /dev/null; then
    ssh-agent > "${XDG_RUNTIME_DIR}/ssh-agent.env"
fi
if [[ ! -S "${SSH_AUTH_SOCK}" ]]; then
    source "${XDG_RUNTIME_DIR}/ssh-agent.env" > /dev/null
fi

#----------------------------------------------------------

#working ssh's
alias sshcmg='ssh-add ~/.ssh/cm_github_rsa'
alias sshcmb='ssh-add ~/.ssh/cm_bitbucket_rsa'

#personal ssh
alias sshps='ssh-add ~/.ssh/personal_rsa'

#work directories
alias tp='cd ~/dev/cm/tripp-unity-mobile-client'
alias nmp='cd ~/dev/cm/nativemediaplayer/'
alias tpb='cd ~/dev/cm/build'

#personal directories
alias ps='cd ~/dev/personal/'

#work vpn
alias vpntp="sudo openvpn --config ~/.vpn/tripp-remote-access-split-vpn-viscosity.ovpn"

#miscellaneous
alias lg="lazygit"
alias antlr4="java -jar ~/dev/personal/tools/antlr-4.13.1-complete.jar"


#ENVIRONMENT VARIABLES
export CLASSPATH="$CLASSPATH:~dev/personal/tools/antlr-4.13.1-complete.jar"
