# Append below lines to your .bashrc
# START ec2ssh .bashrc
# Source https://github.com/harivishnup/ec2ssh
PPK=~/private.pem
_ec2ssh(){
    if [ $# -lt 1 ]
    then
        echo "Usage: ec2ssh <ec2-instance-hostname>"
    else
        echo "Connecting to $1 #..."
        ssh -i $PPK ec2-user@$1
    fi
}
alias ec2ssh='_ec2ssh'
# END ec2ssh .bashrc
