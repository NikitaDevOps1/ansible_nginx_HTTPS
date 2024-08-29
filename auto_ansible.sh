#!/bin/bash

ansible-playbook install_nginx.yml -i hosts.ini -e "ansible_user=nikita ansible_password=1 ansible_become_user=root ansible_become_password=1"
