Genel bilgiler

```yaml
---
# YAML documents begin with the document separator ---

# The minus in YAML this indicates a list item.  The playbook contains a list 
# of plays, with each play being a dictionary
-

  # Hosts: where our play will run and options it will run with

  # Vars: variables that will apply to the play, on all target systems

  # Tasks: the list of tasks that will be executed within the play, this section
  #       can also be used for pre and post tasks

  # Handlers: the list of handlers that are executed as a notify key from a task

  # Roles: list of roles to be imported into the play

# Three dots indicate the end of a YAML document
...

```

gather_facts: Ansible bağlandığı sunucu hakkında; IP adresi, BIOS bilgisi, bir sistemin yazılım bilgisi ve hatta donanım bilgisi kısacası sunucu hakkında bilgi toplamaya yarar. false olursa daha hızlı çalışır.

taskın ne kadar sürdüğünü check etmek için başına `time` ekleyebiliriz.

Jinja2 template variable override etme:

```bash
ansible-playbook <playbook-yml> -e '<variable>=<value>'
```

Setup bilgilere bakmak için:

```bash
ansible all -i <inventory> -m setup | more
# more şart değil
```

Vars yapısı:

```yaml
vars:
  <var-group>:
    <variable>: <value>
```

Ansible'da dict_key'e erişme (jinja template):

```yaml
{{" dict "}}
{{ "dict.dict_key" }}
{{" dict['dict_key'] "}}
```

Ansible'da liste elemanlarına erişme:

```yaml
{{ "list[0]" }}
{{ "list.0" }}
```

Gather facts ile erişilebilecek bazı attributeler:

```yaml
{{ hostvars[ansible_hostname].ansible_port }}
{{ hostvars[ansible_hostname]['ansible_port'] }}
{{ hostvars[ansible_hostname].ansible_default_ipv4.address }}
{{ hostvars[ansible_hostname]['ansible_default_ipv4']['address'] }}
```

vars'a default value atmak için:

```yaml
{{ <var> | default('default_value') }}
```



```

