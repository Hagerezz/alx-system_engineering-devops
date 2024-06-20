#!/usr/bin/env bash
# use puppet

file { '/etc/ssh/ssh_config':
  ensure  => present,
content =>"

    # SSH client configuration
    host *
    IdentityFile ~/.ssh/id_rsa
    PasswordAuthentication no
}
