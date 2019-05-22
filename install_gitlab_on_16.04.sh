echo "Running script for installation of GitLab comunity-edition. Requires su-privileges."
echo "... Updating the enviroment"
sudo apt update
sudo apt install ca-certificates curl openssh-server postfix
echo "... pulling the installation ressources"
cd /tmp
curl -LO https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.deb.sh
sudo bash /tmp/script.deb.sh
echo "... installing gitlab-ce"
sudo apt install gitlab-ce
echo "... adjusting ufw-settings"
sudo ufw allow http https OpenSSH
echo ""
echo "Done with setup-process. !WARNING! you now have an open and unrestricted server-enviroment, further manual steps are required!"