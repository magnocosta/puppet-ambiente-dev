# -*- mode: ruby -*-
# vi: set ft=ruby :

class redis::install {

     exec { "download-redis":
        command => "/usr/bin/wget http://download.redis.io/redis-stable.tar.gz",
        unless  => "/bin/ls | /bin/grep redis-stable.tar.gz",
        require => Class["common::basic"]
     }

    exec { "tar-redis-stable":
        command => "/bin/tar xvzf redis-stable.tar.gz -C /opt",
        creates => "/opt/redis-stable",
        require => Exec["download-redis"]
    }

}
