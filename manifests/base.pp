# -*- mode: ruby -*-
# vi: set ft=ruby :

Exec {
    path => "/usr/local/bin:/usr/bin:/usr/sbin:/sbin:/bin",
}

class init {
  group { "puppet":
      ensure => "present",
  }

  case $operatingsystem {
      ubuntu: {
          exec { "update_apt":
              command => "sudo apt-get update",
          }

          # Provides "add-apt-repository" command, useful if you need
          # to install software from other apt repositories.
          package { "python-software-properties":
              ensure => present,
              require => [
                  Exec['update_apt'],
              ];
          }
      }
  }
}

class dev {
    class {
      init: before => Class['stanbol']
    }

    include stanbol
}

include dev
