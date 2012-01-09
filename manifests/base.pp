# -*- mode: ruby -*-
# vi: set ft=ruby :

Exec {
    path => "/usr/local/bin:/usr/bin:/usr/sbin:/sbin:/bin",
}

class dev {
    include stanbol
}

include dev
