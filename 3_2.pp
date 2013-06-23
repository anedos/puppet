  case $operatingsystem {
    'Debian', ' Ubuntu' : {
      $filename = '/root/files/ntp.conf.debian'
      $servicename = 'ntp'
    }
    'CentOS', 'RedHat'  : {
      $filename = '/root/files/ntp.conf.el'
      $servicename = 'ntpd'
    }
  }
  package {'ntp':
    ensure => installed,
  }
  file {'/etc/ntp.conf':
    source => $filename,
    owner  => 'root',
    group  => 'root',
    mode   => '640',
    notify =>  Service ['ntp'], 
    require=> Package ['ntp'],
  }
  service {'ntp':
    name       => $servicename,
    ensure     => running,
    enable     => true,
  }


