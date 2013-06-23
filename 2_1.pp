  package { 'httpd':
    ensure => latest,
    before => File['/etc/httpd/conf/httpd.conf'],
  }
  file {'/etc/httpd/conf/httpd.conf':
    ensure => file,
    mode   => 600,
    source => '/root/examples/httpd.conf',
  }

  service { 'httpd':
    ensure    => running ,
    enable    => true ,
    subscribe => File['/etc/httpd/conf/httpd.conf'],
  }

