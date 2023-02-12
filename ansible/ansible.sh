#!/usr/bin/env bash

tags="$1"

if [ -z $tags ]; then
  tags="all"
fi

ansible-galaxy collection install -r ~/.dotfiles/ansible/requirements.yml

ansible-playbook -i ~/.dotfiles/ansible/hosts ~/.dotfiles/ansible/playbook.yml --tags $tags
