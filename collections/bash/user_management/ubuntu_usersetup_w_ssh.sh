#VARIABLE DECLARATION
USERNAME="UserYourCreating"
GROUPNAME="GroupYouAreCreating"
 
#CREATE RUNNER GROUP 
addgroup $GROUPNAME
 
#CREATE GSA SECURITY USER
useradd $USERNAME --create-home --shell /bin/bash --groups $GROUPNAME
 
#CREATE SSH DIRECTORY FOR SERVICE ACCOUNT
mkdir /home/$USERNAME/.ssh
chown -R $USERNAME:$GROUPNAME /home/$USERNAME/.ssh
chmod 700 /home/$USERNAME/.ssh
 
#CREATE PUBLIC KEY
touch /home/$USERNAME/.ssh/authorized_keys.pub
echo 'Enter_SSH_public_key_text_here' >> /home/$USERNAME/.ssh/authorized_keys.pub
mv /home/$USERNAME/.ssh/authorized_keys.pub /home/$USERNAME/.ssh/authorized_keys
chmod 600 /home/$USERNAME/.ssh/authorized_keys
 
systemctl restart ssh
