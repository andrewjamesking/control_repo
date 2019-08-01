node default {
}
node 'master.puppet.vm' {
  include role::master_server
  file { '/root/README':
  ensure => file,
  content => $os['release']['major'],
  }
}

node 'minetest.puppet.vm' {
  include role::minecraft_server
  }

node /^web/ {
  include role::app_server
}

node /^db/ {
  include role::db_server 
}
