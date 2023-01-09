# execute apt-get update
exec { 'apt-update':
	command => '/usr/bin/apt-get update'
	}
	
#install curl 
package { 'curl':
	require => Exec['apt-update'],
	ensure => installed,
	}

#install nodejs
package { 'nodejs':	
	ensure => installed,
	}