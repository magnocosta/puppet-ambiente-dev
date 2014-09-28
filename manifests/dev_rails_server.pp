# -*- mode: ruby -*-
# vi: set ft=ruby :

include common::basic
include ruby::install
include mysql::server

exec {'add_group_rvm_in_user_admin':
    unless   => 'grep -Ec rvm.*:admin /etc/group',
    command  => 'usermod -aG rvm admin',
    path     => ['/bin', '/usr/sbin'],
    require  => Class['common::basic']
}

exec {'add_group_vagrant_in_user_admin':
    unless   => 'grep -Ec vagrant.*:admin /etc/group',
    command  => 'usermod -aG vagrant admin',
    path     => ['/bin', '/usr/sbin'],
    require  => Class['common::basic']
}

file { '/var/ruby_apps':
    ensure  => directory,
    owner   => 'admin',
    group   => 'admin',
    mode    => 775,
    require => Class['common::basic']
}

