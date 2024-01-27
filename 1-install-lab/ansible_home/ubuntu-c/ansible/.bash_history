ls
ll
ssh ubuntu1
ls -al
cd .ssh/
ls
cat known_hosts
ssh-keygen -H -F ubuntu1
clear
ssh-keygen
echo password > password.txt
for user in ansible root; do for os in ubuntu centos; for instance in 1 2 3
for user in ansible root; do   for os in ubuntu centos;      for instance in 1 2 3
for user in ansible root; do for os in ubuntu centos; do for instance in 1 2 3; do sshpass -f password.txt ssh-copy-id -o StrictHostKeyChecking=no ${user}@${os}${instance}; done; done; done
sudo apt-get install sshpass
sudo apt-get update
sudo apt-get install sshpass
for user in ansible root; do for os in ubuntu centos; do for instance in 1 2 3; do sshpass -f password.txt ssh-copy-id -o StrictHostKeyChecking=no ${user}@${os}${instance}; done; done; done
clear
ansible -i ubuntu1,ubuntu2,ubuntu3,centos1,centos2,centos3 all -m ping
ansible --version
cd ..
ls
ansible --version
sudo mkdir /etc/ansible
sudo touch /etc/ansible/ansible.cfg
ansible --version
mkdir ansible_inv
cd ansible_inv/
nano ansible.cfg
nano hosts
export ANSIBLE_CONFIG=./ansible.cfg
ansbile all -m ping
ansible all -m ping
nano hosts 
ansible all -m ping
sudo rm -f ~/.ssh/known_hosts
ansible all -m ping
ansbile hosts --list-hosts
ansible hosts --list-hosts
ansible centos --list-hosts
python3 -m pip install --user argcomplete
activate-global-python-argcomplete --user
nano ~/.profile 
source ~/.profile 
ansible centos --activate-global-python-argcomplete --user
activate-global-python-argcomplete --user
exec bash
exit
ls
cd ansible_inv/
ansible -h
