class profile::ssh_server {
      package {'openssh-server' :
          ensure => present,
          }
      service { 'sshd':
          ensure => 'running',
          enable => 'true',
          }
      ssh_authorized_key { 'root@master.puppet.vm':
          ensure => present,
          user   => 'root',
          type   => 'ssh-rsa',
          key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCw63IFEer0nGQEUgbatQE/4nnYcdXQDzx3Z0+2yyPoEaCgJS5+GPiBJc6pbTAF/0T9x8jDwZdwfAyfM1WvrmPLnhT6JBXxqns1uX3cUeUq+5qAVpDN1NgvYJMVRWJfIzmj1q+u7mMWO71FbeVORkMjgEYa7GLh4ut4DWKCbdmyBuCC5Zl7Mx16rzWap52IWSjLpUnPRMd7Wdhg3Q4Po8CSGgnmRCY374ffKFZj9t4qmQHgXdQhWHGIpRygRWCpC3hR5S72uDZsKRhr6YmiIy1k0Qg+HrdYmMgM2jEC24tkGHKidALjJ0RFYl7hKBSE2TPdqJ+c8/flt9ab7LVx+sx9',
          }
  }
