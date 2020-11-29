export DEBIAN_FRONTEND=noninteractive
# sudo apt-get update -y && apt-get upgrade -y

# XFCE autologin
echo '[Seat:*]' >> /etc/lightdm/lightdm.conf
echo 'autologin-user=user42' >> /etc/lightdm/lightdm.conf

echo "user42" >> /etc/shutdown.allow
echo "user42 ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

usermod -a -G vboxsf user42

sudo rm -f /home/user42/.zsh_history



# apt-get clean -y
# apt-get autoremove --purge -y
