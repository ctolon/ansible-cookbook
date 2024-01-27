# Talimatlar

Projeyi ayağa kaldırmak için aşağıdaki adımları takip edebilirsiniz.

```bash
docker-compose up -d
```

`http://localhost:1000` adresine giderek diveinto arayüzüne erişebilirsiniz.

ssh check etmek için:

sshpass kurmak:

```bash
sudo apt-get install sshpass
```

```bash
ssh-keygen -H -F <hostname or ip addr>
```

ssh üretmek:

```bash
ssh-keygen
cat ..ssh/id_rsa.pub
```

ssh kopyalamak (manuel):

```bash
ssh-copy-id -i ~/.ssh/id_rsa.pub root@<hostname or ip addr> # ansible@ubuntu1
ssh-copy-id ansible@<hostname or ip addr>
```

ssh kopayalamak (otomatik):

```bash
echo password > password.txt

for user in ansible root
> do
> for os in ubuntu centos
> do
> for instance in 1 2 3
> do
> sshpass -f password.txt ssh-copy-id -o StrictHostKeyChecking=no ${user}@${os}${instance}
> done
> done
> done
```

Konfigürasyon test etme:

```bash
ansible -i ubuntu1,ubuntu2,ubuntu3,centos1,centos2,centos3 all -m ping
```


