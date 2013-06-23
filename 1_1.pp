  file {'/etc/motd':
    ensure  => present,
    mode    => 0640,
    content => "Hello gavliari... Let's start practising puppet",
  }
