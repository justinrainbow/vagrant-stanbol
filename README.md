# Stanbol in Vagrant


## Installation

``` sh
git clone git://github.com/justinrainbow/vagrant-stanbol.git
cd vagrant-stanbol
git submodule update --init
vagrant up
```

## Prerequisites

``` sh
sudo gem install vagrant
```

It's possible that you will need to correct the private key permissions on
the Vagrant private key.  For example, on OS X you would run:

``` sh
sudo chmod 644 /Library/Ruby/Gems/1.8/gems/vagrant-0.8.*/keys/vagrant
```
