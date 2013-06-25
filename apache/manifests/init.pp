class apache {

  package { 'httpd-2.2.3':
    ensure => present,
    before => File['/etc/httpd/conf/httpd.conf'],
  }
  file {'/etc/httpd/conf/httpd.conf':
    ensure => file,
    mode   => 600,
    source => 'puppet:///modules/apache/httpd.conf',
  }
  file {'/var/www':
    ensure => directory,
  }
  file {'/var/www/html/index.html':
    ensure => present,
    source => 'puppet:///modules/apache/index.html',
  }
  file {'/var/www/error/HTTP_NOT_FOUND.html':
    ensure => present,
    source => 'puppet:///modules/apache/HTTP_NOT_FOUND.html',
  }

  service { 'httpd':
    ensure    => running ,
    enable    => true ,
    subscribe => File['/etc/httpd/conf/httpd.conf'],
  }
}
