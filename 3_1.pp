
  case $operatingsystem {
    'centos', 'redhat' : {
      $packagename = 'gcc'
    }
    'debian', 'ubuntu' : {
      $packagename = ['gcc' , 'build-essential']
    }
  }
  package { $packagename :
      ensure => installed,
    }
