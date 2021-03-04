# 简介

ansible playbook 适用于 Rehat/Cent OS 7 部署环境

# 介绍

将为服务器配置如下内容：

- Zabbix


# 安装

## 1.1 使用 epel 源 安装

### 1.1.1 先安装 epel 源

```shell
# 适用于 RHEL/CentOS 7
yum install https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
```

### 1.1.2 安装 ansible

```shell
yum install -y ansible
# 安装成功后验证
[root@ops ~]# ansible --version
ansible 2.9.16
  config file = /etc/ansible/ansible.cfg        # 默认配置文件目录
  configured module search path = [u'/root/.ansible/plugins/modules', u'/usr/share/ansible/plugins/modules']
  ansible python module location = /usr/lib/python2.7/site-packages/ansible
  executable location = /usr/bin/ansible
  python version = 2.7.5 (default, Apr  2 2020, 13:16:51) [GCC 4.8.5 20150623 (Red Hat 4.8.5-39)]
```

## 1.2 使用 pip 安装

`pip install ansible`

# 使用

## zabbix

1. 修改主机配置文件，`/etc/ansible/hosts`，添加需要安装的主机：

```
[zabbix-server]
192.168.1.1

[zabbix-angent]
192.168.1.[10:100]
```

2. 修改 `zabbix_server/agent_install.yml` hosts 项
3. 执行 `ansible-playbook zabbix_server_install.yml`