Ansible versiyon check etme:

```bash
ansible --version
```

Eğer config file yoksa:

```bash
sudo mkdir /etc/ansible
touch /etc/ansible/ansible.cfg
```

Ansible config file doğrulama:

```bash
ansible --version
```

3 farklı ansible config file var:

- `/etc/ansible/ansible.cfg` (Priority low)
- `~/.ansible.cfg` (Priority medium)
- `./ansible.cfg` (Priority high)

Ansible'da özel config file kullanmak için:

```bash
export ANSIBLE_CONFIG=./ansible.cfg
```

iş bitince:

```bash
unset ANSIBLE_CONFIG
```

Host key check disable etme:

```bash
export ANSIBLE_HOST_KEY_CHECKING=False
```

CLI completion:

```bash
python3 -m pip install --user argcomplete
activate-global-python-argcomplete --user

# bash_profile ya da profile dosyasına ekleme yapılabilir.
eval $(register-python-argcomplete ansible)
eval $(register-python-argcomplete ansible-config)
eval $(register-python-argcomplete ansible-console)
eval $(register-python-argcomplete ansible-doc)
eval $(register-python-argcomplete ansible-galaxy)
eval $(register-python-argcomplete ansible-inventory)
eval $(register-python-argcomplete ansible-playbook)
eval $(register-python-argcomplete ansible-pull)
eval $(register-python-argcomplete ansible-vault)
```


Ansible Inventory yapısı (INI, JSON, YAML kullanılabilir):

```bash
ansible.cfg
hosts # INI Format
hosts.json
host.yaml
```

ansible'da hangi user ile komut işletildiğini görmek için:

```bash
ansible all -m command -a "id" -o
```

ansible hosts dosyası için önemli bazı parametreler:

- `ansible_user`: hangi user ile bağlanılacağı
- `ansible_port`: hangi porttan bağlanılacağı
- `ansible_become`: ansible user ile bağlanıp sonra root olmak için
- `ansbile_become_pass`: root olmak için password
- `ansbile_connection`: ssh, local, docker, winrm, paramiko. Örneğin local olarak çalıştırmak için `ansible_connection=local` yazılabilir.

ansible'da [<group>:vars] ile gruplara özel değişkenler tanımlanabilir (tekrarı engellemek için).


ansible'da ubuntu1 ubuntu2 ubuntu3 yerine `ubuntu[1:3]` yazılabilir`

ansible grouplama için `[grup-adı:children]` kullanılabilir. bu sectionun altına diğer gruplar yazılır ve böylece gruplar başka bir grubun içinde alt küme olur.

hosts içindeki grupları görmek için:

```bash
ansible <section> --list-hosts
```





