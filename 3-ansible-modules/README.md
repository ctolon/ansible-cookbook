Ansible Renkler:

- `Kırmızı`: Komut başarısız
- `Sarı`: Komut başarılı ve değişiklikler yapıldı
- `Yeşil`: Komut başarılı ve değişiklikler yapılmadı

Module template:

```bash
ansible all -m <module_name> -a <module_arguments>
```

File module kullanım:

```bash
ansible all -m file -a "path=/tmp/testfile state=touch"
```

File module w/permissions:

```bash
ansible all -m file -a "path=/tmp/testfile state=touch mode=600"
```

Copy module:

```bash
ansible all -m copy -a "src=/tmp/testfile dest=/tmp/testfile"
```

Remote copy module:

```bash
ansible all -m copy -a "remote_src=yes src=/tmp/testfile dest=/tmp/testfile"
```

Command module:

```bash
ansible all -a <command> -o
ansbile all -a touch "/tmp/testfile creates=/tmp/testfile"
ansible all -a 'rm /tmp/test removes=/tmp/test'
```

Fetch module:

```bash
ansible all -m fetch -a "src=/tmp/testfile dest=/tmp/testfile"
```

Module doclarına bakma:

```bash
ansible-doc <module_name>
ansible-doc file
```