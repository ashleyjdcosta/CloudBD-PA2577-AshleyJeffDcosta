node /appserver/ {
  package { 'nodejs':
    ensure => installed,
  }
}
node /dbserver/ {
  service { 'mysql':
    ensure => running,
    enable => true,
  }
}
node /web/ {
  package { 'nginx':
    ensure => installed,
  }

  file { '/etc/nginx/nginx.conf':
    ensure  => file,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content => template('nginx/nginx.conf.erb'),
  }

  service { 'nginx':
    ensure => running,
    enable => true,
  }
}
node /tst[0-2]/ {
  exec { 'apt-get update':
    command => '/usr/bin/apt-get update',
  }
}
