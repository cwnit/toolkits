#VARIABLE DECLARATION
USERNAME='UserYourCreating'
GROUPNAME='GroupYouAreCreating'

#CurrentOS='uname -srm'
#CurrentOS=$(cat /etc/lsb-release | grep "DISTRIB_ID" | cut -d= -f 2)

egrep -i $GROUPNAME /etc/group;

if [ $? -eq 0 ];then
        echo -e "${RED} OUTPUT | group already exist skipping group setup"
else
    #CREATE RUNNER GROUP 
    addgroup $GROUPNAME
    echo "OUTPUT | group created"
fi


if [ $(id -u $USERNAME) -gt 0]; then
    echo "OUTPUT | User already exist"
else
    #CREATE GSA SECURITY USER
    useradd $USERNAME --create-home --shell /bin/bash --groups $GROUPNAME
    echo "OUTPUT | User created and aded to group"

    #CREATE SSH DIRECTORY FOR SERVICE ACCOUNT
    mkdir /home/$USERNAME/.ssh
    echo "OUTPUT | Directory created"
fi

#ASSIGN PERMISSIONS TO DIRECTORY AND .SSH FILE
chown -R $USERNAME:$GROUPNAME /home/$USERNAME/.ssh
chmod 700 /home/$USERNAME/.ssh
  
#CREATE PUBLIC KEY
touch /home/$USERNAME/.ssh/authorized_keys.pub
echo 'Enter_SSH_public_key_text_here' >> /home/$USERNAME/.ssh/authorized_keys.pub
mv /home/$USERNAME/.ssh/authorized_keys.pub /home/$USERNAME/.ssh/authorized_keys
chmod 600 /home/$USERNAME/.ssh/authorized_keys


if [[ $CurrentOS == "Ubuntu"* ]]; then
    systemctl restart ssh
elif [[ "$CurrentOS" == "darwin"* ]]; then
    sudo launchctl stop com.openssh.sshd
    sudo launchctl start com.openssh.sshd
elif [[ "$CurrentOS" == "cygwin" ]]; then
        # POSIX compatibility layer and Linux environment emulation for Windows
        # ...
else
        # Unknown.
fi

#UBUNTU
#systemctl restart ssh
#CENTOS
#service sshd restart